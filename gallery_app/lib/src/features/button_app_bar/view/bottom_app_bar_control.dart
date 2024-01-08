import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/src/features/button_app_bar/logic/bottom_app_bar_bloc.dart';
import 'package:gallery_app/src/features/button_app_bar/logic/bottom_app_bar_state.dart';
import 'package:gallery_app/src/network/data/bottom_app_bar_enum.dart';
import 'package:gallery_app/src/theme/colors.dart';
import 'package:gallery_app/src/widgets/section.dart';
import 'package:gallery_app/src/widgets/switch.dart';

class BottomAppBarControl extends StatelessWidget {
  const BottomAppBarControl({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buiSwitchFloatActionButton(),
        _buiSwitchNotch(),
        Container(
          width: double.infinity,
          height: 1,
          color: AppColors.gray_300,
        ),
        _buildRadioButton()
      ],
    );
  }

  Widget _buiSwitchFloatActionButton() {
    return BlocBuilder<BottomAppBarBloc, BottomAppBarState>(
      buildWhen: (previous, current) =>
          previous.isfloatActionButton != current.isfloatActionButton,
      builder: (BuildContext context, BottomAppBarState state) {
        return XSwitch(
          value: state.isfloatActionButton,
          label: 'Float Action Button',
          onChange: (value) {
            context
                .read<BottomAppBarBloc>()
                .setProp(isfloatActionButton: value);
          },
        );
      },
    );
  }

  Widget _buiSwitchNotch() {
    return BlocBuilder<BottomAppBarBloc, BottomAppBarState>(
      buildWhen: (previous, current) => previous.isNotch != current.isNotch,
      builder: (BuildContext context, BottomAppBarState state) {
        return XSwitch(
          value: state.isNotch,
          label: 'Notch',
          onChange: (value) {
            context.read<BottomAppBarBloc>().setProp(isNotch: value);
          },
        );
      },
    );
  }

  Widget _buildListTitle(
      {required String title,
      required FloatActionButtonEnum floatActionButtonEnum}) {
    return BlocBuilder<BottomAppBarBloc, BottomAppBarState>(
        buildWhen: (previous, current) =>
            previous.floatingActionButtonLocation !=
            current.floatingActionButtonLocation,
        builder: (context, state) {
          return ListTile(
            title: Text(
              title,
              style: const TextStyle(
                  color: AppColors.slate_900,
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
            ),
            leading: Radio<FloatActionButtonEnum>(
              value: floatActionButtonEnum,
              groupValue: FloatActionButtonEnum.fromValue(
                  state.floatingActionButtonLocation),
              onChanged: (FloatActionButtonEnum? value) {
                context.read<BottomAppBarBloc>().setProp(
                    floatingActionButtonLocation: floatActionButtonEnum.value);
              },
            ),
          );
        });
  }

  Widget _buildRadioButton() {
    return XSection(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Float Action Button Positon',
            style: TextStyle(
                color: AppColors.slate_900,
                fontSize: 24,
                fontWeight: FontWeight.w500),
          ),
          _buildListTitle(
              title: 'Docked - End',
              floatActionButtonEnum: FloatActionButtonEnum.endDocked),
          _buildListTitle(
              title: 'Docked - Center',
              floatActionButtonEnum: FloatActionButtonEnum.centerDocked),
          _buildListTitle(
              title: 'Floating - End',
              floatActionButtonEnum: FloatActionButtonEnum.endFloat),
          _buildListTitle(
              title: 'Floating - Center',
              floatActionButtonEnum: FloatActionButtonEnum.centerFloat),
        ],
      ),
    );
  }
}
