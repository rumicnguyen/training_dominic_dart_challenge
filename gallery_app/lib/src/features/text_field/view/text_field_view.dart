import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/src/features/text_field/logic/text_field_bloc.dart';
import 'package:gallery_app/src/features/text_field/view/text_field_control.dart';
import 'package:gallery_app/src/features/text_field/view/text_field_screen.dart';
import 'package:gallery_app/src/widgets/appbar.dart';

class TextFieldView extends StatelessWidget {
  const TextFieldView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TextFieldBloc>(
      create: (_) => TextFieldBloc(),
      child: const Scaffold(
        appBar: XAppBar(title: 'Form View'),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [ TextFieldControl(),TextFieldScreen()]),
      ),
    );
  }
}