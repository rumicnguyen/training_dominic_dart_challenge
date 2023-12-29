import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key, required this.favorites});

  final List<WordPair> favorites;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
      ),
      body: favorites.isEmpty
          ? const Center(
              child: Text('No favorites yet.'),
            )
          : ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text('You have ${favorites.length} favorites:'),
                ),
                for (var pair in favorites)
                  ListTile(
                    onTap: () {
                      if (favorites.contains(pair)) {
                        favorites.remove(pair);
                      }
                    },
                    leading: const Icon(Icons.favorite),
                    title: Text(pair.asPascalCase),
                  ),
              ],
            ),
    );
  }
}
