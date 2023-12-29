import 'package:english_words/english_words.dart';
import 'package:first_app/src/features/favorite/logic/favorite_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteBloc extends Cubit<FavoriteState> {
  FavoriteBloc() : super(FavoriteState.ds());

  void removeFavoriteItem(WordPair pair) {
    List<WordPair> list = List.from(state.wordPairs);
    list.remove(pair);
    emit(state.copyWith(wordPairs: list));
  }

  void insertFavoriteItem(WordPair pair) {
    List<WordPair> list = List.from(state.wordPairs);
    list.contains(pair)? list.remove(pair): list.add(pair);
    emit(state.copyWith(wordPairs: list));
  }
}
