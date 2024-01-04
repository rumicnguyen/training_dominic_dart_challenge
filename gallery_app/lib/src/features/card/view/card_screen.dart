import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/src/features/card/logic/card_bloc.dart';
import 'package:gallery_app/src/features/card/logic/card_state.dart';
import 'package:gallery_app/src/theme/colors.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CardBloc, CardState>(
        buildWhen: (previous, current) => previous.isChanged(current),
        builder: (context, state) {
          switch (state.background) {
            case 'color':
              return _buildBackgroundColor();
            case 'gradient':
              return _buildBackgroundGradient();
            default:
              return _buildBackgroundColor();
          }
        });
  }

  Widget _buildBackgroundColor() {
    return BlocBuilder<CardBloc, CardState>(
        buildWhen: (previous, current) => previous.isChanged(current),
        builder: (context, state) {
          return Center(
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                  color: AppColors.blue_500,
                  backgroundBlendMode: state.blendMode,
                  border: Border.all(
                      color: AppColors.slate_800,
                      width: state.isBorder ? 5.0 : 0),
                  borderRadius: state.borderRadius,
                  boxShadow: state.isBoxShadow
                      ? List.from([
                          const BoxShadow(color: AppColors.amber_600),
                          const BoxShadow(blurRadius: 3.0)
                        ])
                      : List.empty()),
            ),
          );
        });
  }

  Widget _buildBackgroundGradient() {
    return BlocBuilder<CardBloc, CardState>(
        buildWhen: (previous, current) => previous.isChanged(current),
        builder: (context, state) {
          return Center(
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment(0.8, 1),
                    colors: <Color>[
                      AppColors.blue_900,
                      AppColors.red_400,
                      AppColors.emerald_300,
                    ],
                  ),
                  backgroundBlendMode: state.blendMode,
                  border: Border.all(
                      color: AppColors.slate_800,
                      width: state.isBorder ? 5.0 : 0),
                  borderRadius: state.borderRadius,
                  boxShadow: state.isBoxShadow
                      ? List.from([
                          const BoxShadow(color: AppColors.amber_600),
                          const BoxShadow(blurRadius: 3.0)
                        ])
                      : List.empty()),
            ),
          );
        });
  }
}
