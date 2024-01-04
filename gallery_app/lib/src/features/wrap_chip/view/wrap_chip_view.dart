import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/src/features/wrap_chip/logic/wrap_chip_bloc.dart';
import 'package:gallery_app/src/features/wrap_chip/view/wrap_chip_control.dart';
import 'package:gallery_app/src/features/wrap_chip/view/wrap_chip_screen.dart';
import 'package:gallery_app/src/widgets/appbar.dart';

class WrapChipView extends StatelessWidget {
  const WrapChipView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<WrapChipBloc>(
      create: (_) => WrapChipBloc(),
      child: const Scaffold(
        appBar: XAppBar(title: 'Wrap & Chip'),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [WrapChipScreen(), WrapChipControl()]),
      ),
    );
  }
}
