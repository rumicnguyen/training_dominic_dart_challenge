import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/src/features/card/logic/card_bloc.dart';
import 'package:gallery_app/src/features/card/view/card_control.dart';
import 'package:gallery_app/src/features/card/view/card_screen.dart';
import 'package:gallery_app/src/widgets/appbar.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CardBloc>(
      create: (_) => CardBloc(),
      child: const Scaffold(
        appBar: XAppBar(title: 'Container View'),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [CardScreen(), CardControl()]),
      ),
    );
  }
}