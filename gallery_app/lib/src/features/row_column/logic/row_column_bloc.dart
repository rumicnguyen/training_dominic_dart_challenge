import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/src/features/row_column/logic/row_column_state.dart';

class RowColumnBloc extends Cubit<RowColumnState> {
  RowColumnBloc() : super(RowColumnState.ds());
  void setIsColumn() => emit(state.copyWith(isRow: false));
  void setIsRow() => emit(state.copyWith(isRow: true));

  void setMainAxisSize(MainAxisSize mainAxisSize) =>
      emit(state.copyWith(mainAxisSize: mainAxisSize));
  void setMainAxisAlignment(MainAxisAlignment mainAxisAlignment) =>
      emit(state.copyWith(mainAxisAlignment: mainAxisAlignment));
  void setCrossAxisAlignment(CrossAxisAlignment crossAxisAlignment) =>
      emit(state.copyWith(crossAxisAlignment: crossAxisAlignment));
  void setVerticalDirection(VerticalDirection verticalDirection) =>
      emit(state.copyWith(verticalDirection: verticalDirection));
  void setTextDirection(TextDirection textDirection) =>
      emit(state.copyWith(textDirection: textDirection));
  void setTextBaseline(TextBaseline textBaseline) =>
      emit(state.copyWith(textBaseline: textBaseline));

  void setStateWithCase<T>(int index, T item){
    switch(index){
      case 1: setMainAxisSize(item as MainAxisSize);
      case 2: setMainAxisAlignment(item as MainAxisAlignment);
      case 3: setCrossAxisAlignment(item as CrossAxisAlignment);
      case 4: setVerticalDirection(item as VerticalDirection);
      case 5: setTextDirection(item as TextDirection);
      case 6: setTextBaseline(item as TextBaseline);
    }
  }
}
