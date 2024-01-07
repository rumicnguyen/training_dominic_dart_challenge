import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/src/features/button_app_bar/logic/bottom_app_bar_state.dart';

class BottomAppBarBloc extends Cubit<BottomAppBarState> {
  BottomAppBarBloc() : super(BottomAppBarState.ds());

  void setProp({
    bool? isfloatActionButton,
    bool? isNotch,
    FloatingActionButtonLocation? floatingActionButtonLocation,
  }) {
    emit(state.copyWith(
      isfloatActionButton: isfloatActionButton ?? isfloatActionButton,
      isNotch: isNotch ?? isNotch,
      floatingActionButtonLocation:
          floatingActionButtonLocation ?? floatingActionButtonLocation,
    ));
  }
}
