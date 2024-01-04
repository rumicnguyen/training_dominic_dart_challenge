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
    // return GridView.count(
    //   crossAxisCount: 2,
    //   children: [_buildElevation(), _buildString()],
    // );
    return Column(
      children: [
        Row(
          children: [_buildElevation(), _buildString()],
        )
      ],
    );
  }

  Widget _buildElevation() {
    return BlocBuilder<WrapChipBloc, WrapChipState>(
      buildWhen: (previous, current) =>
          previous.isElevation != current.isElevation,
      builder: (BuildContext context, WrapChipState state) => XSwitch(
        value: state.isElevation,
        label: 'elevation',
        onChange: (value) {
          context.read<WrapChipBloc>().setProp(isElevation: value);
        },
      ),
    );
  }

  Widget _buildString() {
    return BlocBuilder<WrapChipBloc, WrapChipState>(
      buildWhen: (previous, current) => previous.string != current.string,
      builder: (BuildContext context, WrapChipState state) => XDropDown(
        data: WrapChipEnum.values,
        value: WrapChipEnum.fromValue(state.string),
        getTitle: (e) => e.label,
        onChange: (value) {
          context.read<WrapChipBloc>().setProp(isString: value.value);
        },
      ),
    );
  }
}
