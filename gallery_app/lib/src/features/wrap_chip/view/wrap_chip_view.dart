import 'package:flutter/material.dart';
import 'package:gallery_app/src/features/wrap_chip/widget/chip_chip.dart';
import 'package:gallery_app/src/features/wrap_chip/widget/choice_chip.dart';
import 'package:gallery_app/src/widgets/appbar.dart';

class WrapChipView extends StatelessWidget {
  const WrapChipView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: 'Wrap & Chip'),
      body: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ChipChip(), XChoiceChip()]),
    );
  }
}
