import 'package:english_words/english_words.dart';
import 'package:first_app/src/features/favorite/logic/favorite_bloc.dart';
import 'package:first_app/src/features/favorite/logic/favorite_state.dart';
import 'package:first_app/src/features/favorite/view/favorite_view.dart';
import 'package:first_app/src/features/home/logic/home_bloc.dart';
import 'package:first_app/src/features/home/logic/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widget/big_cart.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const BigCard(),
            const SizedBox(height: 10),
            BlocBuilder<HomeBloc, HomeState>(builder: (contextHome, stateHome) {
              return Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  BlocBuilder<FavoriteBloc, FavoriteState>(
                      buildWhen: (previous, current) =>
                          previous.wordPairs != current.wordPairs,
                      builder: (context, state) {
                        return ElevatedButton.icon(
                          onPressed: () {
                            context
                                .read<FavoriteBloc>()
                                .insertFavoriteItem(stateHome.wordPair);
                          },
                          // icon: Icon(icon),
                          icon: Icon(state.isFavorite(stateHome.wordPair)
                              ? Icons.favorite
                              : Icons.favorite_border),
                          label: const Text('Like'),
                        );
                      }),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      context.read<HomeBloc>().generateWordPair();
                    },
                    child: const Text('Next'),
                  ),
                ],
              );
            }),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      // builder: (context) => const FavoritesPage()),
                      builder: (_) {
                    return BlocProvider.value(
                      value: BlocProvider.of<FavoriteBloc>(context),
                      child: const FavoritesPage(),
                    );
                  }),
                );
              },
              child: const Text('-> Go to Favorites Page'),
            ),
          ],
        ),
      ),
    );
  }
}
