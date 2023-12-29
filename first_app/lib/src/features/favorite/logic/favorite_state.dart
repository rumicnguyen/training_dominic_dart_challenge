import 'package:english_words/english_words.dart';
import 'package:equatable/equatable.dart';

class FavoriteState extends Equatable {
  final List<WordPair> wordPairs;
  const FavoriteState({
    required this.wordPairs,
  });
  factory FavoriteState.ds() => const FavoriteState(wordPairs: []); 
  bool isFavorite(WordPair wordPair) {
    return wordPairs.contains(wordPair) ? true : false;
  }

  FavoriteState copyWith({
    List<WordPair>? wordPairs,
  }) {
    return FavoriteState(
      wordPairs: wordPairs ?? this.wordPairs,
    );
  }

  @override
  List<Object> get props => [wordPairs];
}
