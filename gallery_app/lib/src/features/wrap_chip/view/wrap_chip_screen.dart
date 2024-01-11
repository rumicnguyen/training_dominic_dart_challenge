import 'package:flutter/widgets.dart';
import 'package:gallery_app/src/features/wrap_chip/widget/chip_chip.dart';
import 'package:gallery_app/src/features/wrap_chip/widget/choice_chip.dart';
import 'package:gallery_app/src/features/wrap_chip/widget/input_chip.dart';

class WrapChipScreen extends StatelessWidget {
  const WrapChipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [ChipChip(), XChoiceChip(), XInputChip()]);
  }
}
