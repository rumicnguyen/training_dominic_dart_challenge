import 'package:english_words/english_words.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Cubit<WordPair> {
  HomeBloc(initialState) : super(initialState);

  void generateWordPair()=> emit(WordPair.random());
}
