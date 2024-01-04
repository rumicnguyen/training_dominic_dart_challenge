import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/src/features/card/logic/card_bloc.dart';
import 'package:gallery_app/src/features/card/logic/card_state.dart';
import 'package:gallery_app/src/network/data/card_enum.dart';
import 'package:gallery_app/src/widgets/drop_down.dart';
import 'package:gallery_app/src/widgets/switch.dart';

class CardControl extends StatelessWidget {
  const CardControl({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildBorder(),
        _buildBorderRadius(),
        _buildBoxShadow(),
        _buildBackground(),
        _buildBlendMode()
      ],
    );
  }

  Widget _buildBorder() {
    return BlocBuilder<CardBloc, CardState>(
      buildWhen: (previous, current) => previous.isBorder != current.isBorder,
      builder: (BuildContext context, CardState state) {
        return XSwitch(
          value: state.isBorder,
          label: 'Border',
          onChange: (value) {
            context.read<CardBloc>().setProp(isBorder: value);
          },
        );
      },
    );
  }

  Widget _buildBoxShadow() {
    return BlocBuilder<CardBloc, CardState>(
      buildWhen: (previous, current) =>
          previous.isBoxShadow != current.isBoxShadow,
      builder: (BuildContext context, CardState state) {
        return XSwitch(
          value: state.isBoxShadow,
          label: 'BoxShadow',
          onChange: (value) {
            context.read<CardBloc>().setProp(isBoxShadow: value);
          },
        );
      },
    );
  }

  Widget _buildBorderRadius() {
    return BlocBuilder<CardBloc, CardState>(
      buildWhen: (previous, current) =>
          previous.borderRadius != current.borderRadius,
      builder: (BuildContext context, CardState state) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
          child: XDropDown(
            label: 'BorderRadius',
            data: BorderRadiusEnum.values,
            value: BorderRadiusEnum.fromValue(state.borderRadius),
            getTitle: (e) => e.label,
            onChange: (value) {
              context.read<CardBloc>().setProp(borderRadius: value.value);
            },
          ),
        );
      },
    );
  }

  Widget _buildBackground() {
    return BlocBuilder<CardBloc, CardState>(
      buildWhen: (previous, current) =>
          previous.background != current.background,
      builder: (BuildContext context, CardState state) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
          child: XDropDown(
            label: 'Background',
            data: BackgroundEnum.values,
            value: BackgroundEnum.fromValue(state.background),
            getTitle: (e) => e.label,
            onChange: (value) {
              context.read<CardBloc>().setProp(background: value.value);
            },
          ),
        );
      },
    );
  }

  Widget _buildBlendMode() {
    return BlocBuilder<CardBloc, CardState>(
      buildWhen: (previous, current) => previous.blendMode != current.blendMode,
      builder: (BuildContext context, CardState state) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
          child: XDropDown(
            label: 'BlendMode',
            data: BlendModeEnum.values,
            value: BlendModeEnum.fromValue(state.blendMode),
            getTitle: (e) => e.label,
            onChange: (value) {
              context.read<CardBloc>().setProp(blendMode: value.value);
            },
          ),
        );
      },
    );
  }
}
