import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/src/features/stack_align/logic/stack_align_state.dart';

class StackAlignBloc extends Cubit<StackAlignState> {
  StackAlignBloc() : super(StackAlignState.ds());

  void setProp({
    Alignment? alignment,
    TextDirection? textDirection,
    StackFit? stackFit,
    Clip? clip,
  }) {
    emit(state.copyWith(
      alignment: alignment ?? alignment,
      textDirection: textDirection ?? textDirection,
      stackFit: stackFit ?? stackFit,
      clip: clip ?? clip,
    ));
  }
}
