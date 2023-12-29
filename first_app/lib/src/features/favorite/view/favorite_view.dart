import 'package:english_words/english_words.dart';
import 'package:first_app/src/features/favorite/logic/favorite_bloc.dart';
import 'package:first_app/src/features/favorite/logic/favorite_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Favorites'),
        ),
        body: BlocBuilder<FavoriteBloc, FavoriteState>(
          buildWhen: (previous, current) =>
              previous.wordPairs != current.wordPairs,
          builder: (context, state) {
            List<WordPair> list = List.from(state.wordPairs);
            return list.isEmpty
                ? const Center(
                    child: Text('No favorites yet.'),
                  )
                : ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text('You have ${list.length} favorites:'),
                      ),
                      for (var pair in list)
                        Row(
                          children: [
                            Expanded(
                              child: ListTile(
                                onTap: () {},
                                leading: const Icon(Icons.favorite),
                                title: Text(pair.asPascalCase),
                              ),
                            ),
                            IconButton(
                                onPressed: () {
                                  context
                                      .read<FavoriteBloc>()
                                      .removeFavoriteItem(pair);
                                },
                                icon: const Icon(Icons.close)),
                          ],
                        )
                    ],
                  );
          },
        ));
  }
}
