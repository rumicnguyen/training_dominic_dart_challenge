import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/src/features/wrap_chip/logic/wrap_chip_bloc.dart';
import 'package:gallery_app/src/features/wrap_chip/logic/wrap_chip_state.dart';
import 'package:gallery_app/src/network/data/wrap_chip_enum.dart';
import 'package:gallery_app/src/widgets/drop_down.dart';
import 'package:gallery_app/src/widgets/switch.dart';

class WrapChipControl extends StatelessWidget {
  const WrapChipControl({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildRow(
          [_buildElevation(), _buildAvatar()],
        ),
        _buildRow(
          [_buildDeleteIcon(), _buildOutlinedBorder()],
        ),
        _buildRow(
          [_buildSpacing(), _buildRunSpacing()],
        ),
      ],
    );
  }

  Widget _buildRow(List<Widget> items) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: items.map((e) {
          return e;
        }).toList());
  }

  Widget _buildElevation() {
    return BlocBuilder<WrapChipBloc, WrapChipState>(
      buildWhen: (previous, current) =>
          previous.isElevation != current.isElevation,
      builder: (BuildContext context, WrapChipState state) {
        return Flexible(
          flex: 1,
          child: XSwitch(
            value: state.isElevation,
            label: 'elevation',
            onChange: (value) {
              context.read<WrapChipBloc>().setProp(isElevation: value);
            },
          ),
        );
      },
    );
  }

  Widget _buildAvatar() {
    return BlocBuilder<WrapChipBloc, WrapChipState>(
      buildWhen: (previous, current) => previous.isAvatar != current.isAvatar,
      builder: (BuildContext context, WrapChipState state) {
        return Flexible(
          flex: 1,
          child: XSwitch(
            value: state.isAvatar,
            label: 'avatar',
            onChange: (value) {
              context.read<WrapChipBloc>().setProp(isAvatar: value);
            },
          ),
        );
      },
    );
  }

  Widget _buildDeleteIcon() {
    return BlocBuilder<WrapChipBloc, WrapChipState>(
      buildWhen: (previous, current) =>
          previous.isDeleteIcon != current.isDeleteIcon,
      builder: (BuildContext context, WrapChipState state) {
        return Flexible(
          flex: 1,
          child: XSwitch(
            value: state.isDeleteIcon,
            label: 'deleteIcon',
            onChange: (value) {
              context.read<WrapChipBloc>().setProp(isDeleteIcon: value);
            },
          ),
        );
      },
    );
  }

  Widget _buildSpacing() {
    return BlocBuilder<WrapChipBloc, WrapChipState>(
      buildWhen: (previous, current) => previous.isSpacing != current.isSpacing,
      builder: (BuildContext context, WrapChipState state) {
        return Flexible(
          flex: 1,
          child: XSwitch(
            value: state.isSpacing,
            label: 'spacing',
            onChange: (value) {
              context.read<WrapChipBloc>().setProp(isSpacing: value);
            },
          ),
        );
      },
    );
  }

  Widget _buildRunSpacing() {
    return BlocBuilder<WrapChipBloc, WrapChipState>(
      buildWhen: (previous, current) =>
          previous.isRunSpacing != current.isRunSpacing,
      builder: (BuildContext context, WrapChipState state) {
        return Flexible(
          flex: 1,
          child: XSwitch(
            value: state.isRunSpacing,
            label: 'runSpacing',
            onChange: (value) {
              context.read<WrapChipBloc>().setProp(isRunSpacing: value);
            },
          ),
        );
      },
    );
  }

  Widget _buildOutlinedBorder() {
    return BlocBuilder<WrapChipBloc, WrapChipState>(
      buildWhen: (previous, current) =>
          previous.outlinedBorder != current.outlinedBorder,
      builder: (BuildContext context, WrapChipState state) {
        return Flexible(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
            child: XDropDown(
              isExpand: true,
              data: WrapChipEnum.values,
              value: WrapChipEnum.fromValue(state.outlinedBorder),
              getTitle: (e) => e.label,
              onChange: (value) {
                context
                    .read<WrapChipBloc>()
                    .setProp(outlinedBorder: value.value);
              },
            ),
          ),
        );
      },
    );
  }
}
