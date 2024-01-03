import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/src/features/row_column/logic/row_column_bloc.dart';
import 'package:gallery_app/src/features/row_column/logic/row_column_state.dart';
import 'package:gallery_app/src/network/data/row_column_enum.dart';

class XRadioButton extends StatefulWidget {
  const XRadioButton({super.key});

  @override
  State<XRadioButton> createState() => _XRadioButtonState();
}

class _XRadioButtonState extends State<XRadioButton> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RowColumnBloc, RowColumnState>(
      buildWhen: (previous, current) => previous.isRow != current.isRow,
      builder: (context, state) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: ListTile(
              title: const Text('Row'),
              leading: Radio<RowColumnEnum>(
                value: RowColumnEnum.row,
                groupValue:
                    state.isRow ? RowColumnEnum.row : RowColumnEnum.column,
                onChanged: (RowColumnEnum? value) {
                  context.read<RowColumnBloc>().setIsColumn(false);
                },
              ),
            ),
          ),
          Expanded(
            child: ListTile(
              title: const Text('Column'),
              leading: Radio<RowColumnEnum>(
                value: RowColumnEnum.column,
                groupValue:
                    state.isRow ? RowColumnEnum.row : RowColumnEnum.column,
                onChanged: (RowColumnEnum? value) {
                  context.read<RowColumnBloc>().setIsColumn(true);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
