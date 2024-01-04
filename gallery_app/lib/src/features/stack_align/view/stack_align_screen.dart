import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/src/features/stack_align/logic/stack_align_bloc.dart';
import 'package:gallery_app/src/features/stack_align/logic/stack_align_state.dart';
import 'package:gallery_app/src/theme/colors.dart';

class StackAlignScreen extends StatelessWidget {
  const StackAlignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StackAlignBloc, StackAlignState>(
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) {
          return SizedBox(
            width: 400,
            height: 400,
            child: Stack(
              alignment: state.alignment,
              textDirection: state.textDirection,
              fit: state.stackFit,
              clipBehavior: state.clip,
              children: <Widget>[
                Container(
                  width: 300,
                  height: 300,
                  color: AppColors.sky_500,
                ),
                Container(
                  width: 250,
                  height: 250,
                  color: AppColors.green_400,
                ),
                Container(
                  width: 150,
                  height: 150,
                  color: AppColors.orange_500,
                ),
              ],
            ),
          );
        });
  }
}
