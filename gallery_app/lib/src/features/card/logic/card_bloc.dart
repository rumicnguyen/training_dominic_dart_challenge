import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/src/features/card/logic/card_state.dart';

class CardBloc extends Cubit<CardState> {
  CardBloc() : super(CardState.ds());

  void setProp({
    bool? isBorder,
    BorderRadius? borderRadius,
    bool? isBoxShadow,
    String? background,
    BlendMode? blendMode,
  }) {
    emit(state.copyWith(
      isBorder: isBorder ?? isBorder,
      borderRadius: borderRadius ?? borderRadius,
      isBoxShadow: isBoxShadow ?? isBoxShadow,
      background: background ?? background,
      blendMode: blendMode ?? blendMode,
    ));
  }
}
