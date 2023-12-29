import 'package:english_words/english_words.dart';
import 'package:first_app/src/features/favorite/logic/favorite_bloc.dart';
import 'package:first_app/src/features/favorite/view/favorite_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widget/big_cart.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  WordPair pair = WordPair.random();
  List<WordPair> favorites = [];
  late FavoriteBloc _favoriteCubit;

  @override
  void initState() {
    super.initState();
    _favoriteCubit = BlocProvider.of(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BigCard(pair: pair),
            const SizedBox(height: 10),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                BlocBuilder<FavoriteBloc, List<WordPair>>(
                    builder: (context, state) {
                  return ElevatedButton.icon(
                    onPressed: () {
                      _favoriteCubit.insertFavoriteItem(pair);
                      favorites = state;
                    },
                    // icon: Icon(icon),
                    icon: Icon(state.contains(pair)
                        ? Icons.favorite
                        : Icons.favorite_border),
                    label: const Text('Like'),
                  );
                }),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      pair = WordPair.random();
                    });
                  },
                  child: const Text('Next'),
                ),
              ],
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FavoritesPage(
                            favorites: favorites,
                          )),
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
