import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/src/features/wrap_chip/logic/wrap_chip_bloc.dart';
import 'package:gallery_app/src/features/wrap_chip/logic/wrap_chip_state.dart';
import 'package:gallery_app/src/features/wrap_chip/widget/title.dart';
import 'package:gallery_app/src/theme/colors.dart';

class ChipChip extends StatelessWidget {
  const ChipChip({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const XTitle(title: 'Chip Chip'),
      Wrap(
        spacing: 8.0,
        runSpacing: 4.0,
        children: <Widget>[
          _buildChip('chip'),
          _buildChip('ActionChip'),
          _buildChip('RawChip'),
        ],
      ),
    ]);
  }

  Widget _buildChip(String title) {
    return BlocBuilder<WrapChipBloc, WrapChipState>(
        buildWhen: (previous, current) =>
            previous.isElevation != current.isElevation,
        builder: (context, state) {
          return Chip(
            elevation: state.isElevation ? 10 : 0,
            
            deleteIcon: const Icon(Icons.delete),
            labelStyle: const TextStyle(
                color: AppColors.slate_950,
                fontSize: 20,
                fontWeight: FontWeight.w400),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0))),
            side: BorderSide.none,
            padding: const EdgeInsets.all(5.0),
            backgroundColor: AppColors.gray_300,
            label: Text(title),
          );
        });
  }
}
