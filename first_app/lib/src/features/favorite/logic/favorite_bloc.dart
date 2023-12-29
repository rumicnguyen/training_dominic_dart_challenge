import 'package:english_words/english_words.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteBloc extends Cubit<List<WordPair>> {
  FavoriteBloc() : super([]);

  void removeFavoriteItem(WordPair pair) {
    state.remove(pair);
    emit(state);
  }

  void insertFavoriteItem(WordPair pair) {
    state.contains(pair) ? state.remove(pair) : state.add(pair);
    emit(state);
  }
}
