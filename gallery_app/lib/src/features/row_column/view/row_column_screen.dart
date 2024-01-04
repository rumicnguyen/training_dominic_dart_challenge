import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/src/features/row_column/logic/row_column_bloc.dart';
import 'package:gallery_app/src/features/row_column/logic/row_column_state.dart';
import 'package:gallery_app/src/features/row_column/widget/container.dart';
import 'package:gallery_app/src/theme/colors.dart';

class RowColumnScreen extends StatelessWidget {
  const RowColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RowColumnBloc, RowColumnState>(
      buildWhen: (previous, current) => previous.isChanged(current),
      builder: (context, state) {
        return Container(
            color: AppColors.yellow_300,
            child: state.isRow ? _buildRow(state) : _buildColumn(state));
      },
    );
  }

  List<Widget> _buildXContainer() {
    return <Widget>[
      const XContainer(
        fontSize: 35,
        colors: AppColors.slate_900,
        size: 50,
        textColor: AppColors.yellow_300,
      ),
      const XContainer(
        fontSize: 50,
        colors: AppColors.slate_900,
        size: 75,
        textColor: AppColors.yellow_300,
      ),
      const XContainer(
        fontSize: 35,
        colors: AppColors.slate_900,
        size: 50,
        textColor: AppColors.yellow_300,
      )
    ];
  }

  Widget _buildRow(RowColumnState rowColumnState) {
    return Container(
        color: AppColors.yellow_300,
        child: Row(
            mainAxisAlignment: rowColumnState.mainAxisAlignment,
            mainAxisSize: rowColumnState.mainAxisSize,
            crossAxisAlignment: rowColumnState.crossAxisAlignment,
            verticalDirection: rowColumnState.verticalDirection,
            textDirection: rowColumnState.textDirection,
            textBaseline: rowColumnState.textBaseline,
            children: _buildXContainer()));
  }

  Widget _buildColumn(RowColumnState rowColumnState) {
    return Container(
        color: AppColors.yellow_300,
        child: Column(
            mainAxisAlignment: rowColumnState.mainAxisAlignment,
            mainAxisSize: rowColumnState.mainAxisSize,
            crossAxisAlignment: rowColumnState.crossAxisAlignment,
            verticalDirection: rowColumnState.verticalDirection,
            textDirection: rowColumnState.textDirection,
            textBaseline: rowColumnState.textBaseline,
            children: _buildXContainer()));
  }
}
