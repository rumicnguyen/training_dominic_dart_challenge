import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/src/features/row_column/logic/row_column_bloc.dart';
import 'package:gallery_app/src/features/row_column/logic/row_column_state.dart';
import 'package:gallery_app/src/features/row_column/widget/container.dart';
import 'package:gallery_app/src/theme/colors.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RowColumnBloc, RowColumnState>(
      buildWhen: (previous, current) => previous.isChanged(current),
      builder: (context, state) => Container(
        color: AppColors.yellow_300,
        child: state.isRow
            ? Row(
                mainAxisAlignment: state.mainAxisAlignment,
                mainAxisSize: state.mainAxisSize,
                crossAxisAlignment: state.crossAxisAlignment,
                verticalDirection: state.verticalDirection,
                textDirection: state.textDirection,
                textBaseline: state.textBaseline,
                children: const [
                  XContainer(
                    fontSize: 35,
                    colors: AppColors.slate_900,
                    size: 50,
                    textColor: AppColors.yellow_300,
                  ),
                  XContainer(
                    fontSize: 50,
                    colors: AppColors.slate_900,
                    size: 75,
                    textColor: AppColors.yellow_300,
                  ),
                  XContainer(
                    fontSize: 35,
                    colors: AppColors.slate_900,
                    size: 50,
                    textColor: AppColors.yellow_300,
                  ),
                ],
              )
            : Column(
                mainAxisAlignment: state.mainAxisAlignment,
                mainAxisSize: state.mainAxisSize,
                crossAxisAlignment: state.crossAxisAlignment,
                verticalDirection: state.verticalDirection,
                textDirection: state.textDirection,
                textBaseline: state.textBaseline,
                children: const [
                  XContainer(
                    fontSize: 35,
                    colors: AppColors.slate_900,
                    size: 50,
                    textColor: AppColors.yellow_300,
                  ),
                  XContainer(
                    fontSize: 50,
                    colors: AppColors.slate_900,
                    size: 75,
                    textColor: AppColors.yellow_300,
                  ),
                  XContainer(
                    fontSize: 35,
                    colors: AppColors.slate_900,
                    size: 50,
                    textColor: AppColors.yellow_300,
                  ),
                ],
              ),
      ),
    );
  }
}
