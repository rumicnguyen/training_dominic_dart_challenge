import 'package:first_app/src/app.dart';
import 'package:first_app/src/features/favorite/logic/favorite_bloc.dart';
import 'package:first_app/src/features/home/logic/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MaterialApp(
    title: 'First App',
    theme: ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
    ),
    home: MultiBlocProvider(providers: [
      BlocProvider<FavoriteBloc>(
        create: (BuildContext context) => FavoriteBloc(),
      ),
      BlocProvider<HomeBloc>(
        create: (BuildContext context) => HomeBloc(),
      ),
    ], child: const MyApp()),
    debugShowCheckedModeBanner: false,
  ));
}
