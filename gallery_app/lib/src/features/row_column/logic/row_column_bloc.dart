
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/src/features/row_column/logic/row_column_state.dart';

class RowColumnBloc extends Cubit<RowColumnState> {
  RowColumnBloc() : super(RowColumnState.ds());

  void setIsColumn(bool isColumn) => emit(state.copyWith(isRow: !isColumn));

  void setProp({
    MainAxisSize? mainAxisSize,
    MainAxisAlignment? mainAxisAlignment,
    CrossAxisAlignment? crossAxisAlignment,
    VerticalDirection? verticalDirection,
    TextDirection? textDirection,
    TextBaseline? textBaseline,
  }) {
    emit(state.copyWith(
      mainAxisSize: mainAxisSize ?? state.mainAxisSize,
      mainAxisAlignment: mainAxisAlignment ?? state.mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment ?? state.crossAxisAlignment,
      verticalDirection: verticalDirection ?? state.verticalDirection,
      textDirection: textDirection ?? state.textDirection,
      textBaseline: textBaseline ?? state.textBaseline,
    ));
  }
}
