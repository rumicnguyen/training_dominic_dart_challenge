import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/src/features/stack_align/logic/stack_align_bloc.dart';
import 'package:gallery_app/src/features/stack_align/view/stack_align_control.dart';
import 'package:gallery_app/src/features/stack_align/view/stack_align_screen.dart';
import 'package:gallery_app/src/widgets/appbar.dart';

class StackAlignView extends StatelessWidget {
  const StackAlignView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<StackAlignBloc>(
      create: (_) => StackAlignBloc(),
      child: const Scaffold(
        appBar: XAppBar(title: 'Stack & Align'),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [StackAlignScreen(), StackAlignControl()]),
      ),
    );
    
  }
}