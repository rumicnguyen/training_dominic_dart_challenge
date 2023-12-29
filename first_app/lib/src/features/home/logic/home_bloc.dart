import 'package:english_words/english_words.dart';
import 'package:first_app/src/features/home/logic/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Cubit<HomeState> {
  HomeBloc() : super(HomeState.ds());

  void generateWordPair() {
    WordPair pair = WordPair.random();
    emit(state.copyWith(wordPair: pair));
  }
}
