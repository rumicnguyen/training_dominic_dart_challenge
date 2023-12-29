import 'package:english_words/english_words.dart';
import 'package:first_app/src/features/favorite/logic/favorite_bloc.dart';
import 'package:first_app/src/features/home/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var current = WordPair.random();
  var favorites = <WordPair>[];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return FavoriteBloc();
      },
      child: const HomePage(),
    );
  }
}
