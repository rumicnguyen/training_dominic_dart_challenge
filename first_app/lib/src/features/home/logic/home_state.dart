import 'package:english_words/english_words.dart';
import 'package:equatable/equatable.dart';

class HomeState extends Equatable {
  final WordPair wordPair;
  const HomeState({
    required this.wordPair,
  });

  factory HomeState.ds() => HomeState(wordPair: WordPair.random()) ;

  HomeState copyWith({
    WordPair? wordPair,
  }) {
    return HomeState(
      wordPair: wordPair ?? this.wordPair,
    );
  }

  @override
  List<Object> get props => [wordPair];
}
