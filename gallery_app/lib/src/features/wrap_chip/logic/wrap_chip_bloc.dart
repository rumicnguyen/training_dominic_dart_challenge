import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/src/features/wrap_chip/logic/wrap_chip_state.dart';

class WrapChipBloc extends Cubit<WrapChipState> {
  WrapChipBloc() : super(WrapChipState.ds());

  void setProp({bool? isElevation, bool? isAvatar, bool? isDeleteIcon,
      bool? isSpacing, bool? isRunSpacing, OutlinedBorder? outlinedBorder}) {
    emit(state.copyWith(
      isElevation: isElevation ?? isElevation,
      isAvatar: isAvatar ?? isAvatar,
      isDeleteIcon: isDeleteIcon ?? isDeleteIcon,
      isSpacing: isSpacing ?? isSpacing,
      isRunSpacing: isRunSpacing ?? isRunSpacing,
      outlinedBorder: outlinedBorder ?? outlinedBorder,
    ));
  }
}
