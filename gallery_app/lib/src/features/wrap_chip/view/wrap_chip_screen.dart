import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/src/features/wrap_chip/logic/wrap_chip_bloc.dart';
import 'package:gallery_app/src/features/wrap_chip/widget/chip_chip.dart';
import 'package:gallery_app/src/features/wrap_chip/widget/choice_chip.dart';
import 'package:gallery_app/src/features/wrap_chip/widget/input_chip.dart';

class WrapChipScreen extends StatelessWidget {
  const WrapChipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<WrapChipBloc>(
      create: (BuildContext context) => WrapChipBloc(),
      child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ChipChip(), XChoiceChip(), XInputChip()]),
    );
  }
}
