import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/src/features/row_column/logic/row_column_bloc.dart';
import 'package:gallery_app/src/features/row_column/logic/row_column_state.dart';
import 'package:gallery_app/src/features/row_column/widget/drop_down.dart';
import 'package:gallery_app/src/features/row_column/widget/radio_button.dart';
import 'package:gallery_app/src/network/data/row_column_enum.dart';
import 'package:gallery_app/src/theme/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.slate_50,
      child: Column(
        children: [
          const XRadioButton(),
          _section(
            child: Column(
              children: [
                _buildMainAxisSize(),
                _buildMainAxisAlignment(),
                _buildCrossAxisAlignment(),
                _buildVerticalDirection(),
                _buildTextDirection(),
                _buildTextBaseline()
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _section({required Widget child}) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: child,
    );
  }

  Widget _buildMainAxisSize() {
    return BlocBuilder<RowColumnBloc, RowColumnState>(
      buildWhen: (previous, current) =>
          previous.mainAxisSize != current.mainAxisSize,
      builder: (BuildContext context, RowColumnState state) => XDropDown(
        data: MainAxisSizeEnum.values,
        value: MainAxisSizeEnum.fromValue(state.mainAxisSize),
        label: 'mainAxisSize',
        getTitle: (e) => e.label,
        onChange: (value) {
          context.read<RowColumnBloc>().setMainAxisSize(value.value);
        },
      ),
    );
  }

  Widget _buildMainAxisAlignment() {
    return BlocBuilder<RowColumnBloc, RowColumnState>(
      buildWhen: (previous, current) =>
          previous.mainAxisAlignment != current.mainAxisAlignment,
      builder: (BuildContext context, RowColumnState state) => XDropDown(
        data: MainAxisAlignmentEnum.values,
        value: MainAxisAlignmentEnum.fromValue(state.mainAxisAlignment),
        label: 'mainAxisAlignment',
        getTitle: (e) => e.label,
        onChange: (value) {
          context.read<RowColumnBloc>().setMainAxisAlignment(value.value);
        },
      ),
    );
  }

  Widget _buildCrossAxisAlignment() {
    return BlocBuilder<RowColumnBloc, RowColumnState>(
      buildWhen: (previous, current) =>
          previous.crossAxisAlignment != current.crossAxisAlignment,
      builder: (BuildContext context, RowColumnState state) => XDropDown(
        data: CrossAxisAlignmentEnum.values,
        value: CrossAxisAlignmentEnum.fromValue(state.crossAxisAlignment),
        label: 'crossAxisAlignment',
        getTitle: (e) => e.label,
        onChange: (value) {
          context.read<RowColumnBloc>().setCrossAxisAlignment(value.value);
        },
      ),
    );
  }

  Widget _buildVerticalDirection() {
    return BlocBuilder<RowColumnBloc, RowColumnState>(
      buildWhen: (previous, current) =>
          previous.verticalDirection != current.verticalDirection,
      builder: (BuildContext context, RowColumnState state) => XDropDown(
        data: VerticalDirectionEnum.values,
        value: VerticalDirectionEnum.fromValue(state.verticalDirection),
        label: 'verticalDirection',
        getTitle: (e) => e.label,
        onChange: (value) {
          context.read<RowColumnBloc>().setVerticalDirection(value.value);
        },
      ),
    );
  }

  Widget _buildTextDirection() {
    return BlocBuilder<RowColumnBloc, RowColumnState>(
      buildWhen: (previous, current) =>
          previous.textDirection != current.textDirection,
      builder: (BuildContext context, RowColumnState state) => XDropDown(
        data: TextDirectionEnum.values,
        value: TextDirectionEnum.fromValue(state.textDirection),
        label: 'textDirection',
        getTitle: (e) => e.label,
        onChange: (value) {
          context.read<RowColumnBloc>().setTextDirection(value.value);
        },
      ),
    );
  }

  Widget _buildTextBaseline() {
    return BlocBuilder<RowColumnBloc, RowColumnState>(
      buildWhen: (previous, current) =>
          previous.textBaseline != current.textBaseline,
      builder: (BuildContext context, RowColumnState state) => XDropDown(
        data: TextBaselineEnum.values,
        value: TextBaselineEnum.fromValue(state.textBaseline),
        label: 'textBaseline',
        getTitle: (e) => e.label,
        onChange: (value) {
          context.read<RowColumnBloc>().setTextBaseline(value.value);
        },
      ),
    );
  }
}
