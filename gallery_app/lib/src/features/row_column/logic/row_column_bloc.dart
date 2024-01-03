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
}
