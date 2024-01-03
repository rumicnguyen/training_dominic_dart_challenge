import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/src/features/row_column/logic/row_column_bloc.dart';
import 'package:gallery_app/src/features/row_column/logic/row_column_state.dart';
import 'package:gallery_app/src/theme/colors.dart';

class XDropDown<T> extends StatelessWidget {
  const XDropDown(
      {super.key,
      required this.label,
      required this.data,
      required this.onChange,
      required this.value,
      required this.getTitle});

  final String label;
  final List<T> data;
  final T value;
  final void Function(T) onChange;
  final String Function(T) getTitle;

  TextStyle customStyle() => const TextStyle(
      fontSize: 20, color: AppColors.slate_900, fontWeight: FontWeight.w400);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RowColumnBloc, RowColumnState>(
      buildWhen: (previous, current) => previous.isChanged(current),
      builder: (BuildContext context, RowColumnState state) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: customStyle()),
          DropdownButton<T>(
            style: customStyle(),
            icon: const Icon(Icons.expand_more),
            value: value,
            underline: Container(
              height: 1,
              color: AppColors.gray_400,
            ),
            items: data.map((e) {
              return DropdownMenuItem<T>(
                value: e,
                child: Text(getTitle(e)),
              );
            }).toList(),
            onChanged: (value) {
              if (value != null) {
                onChange(value);
              }
            },
          ),
        ],
      ),
    );
  }
}
