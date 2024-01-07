import 'package:flutter/material.dart';
import 'package:gallery_app/src/theme/colors.dart';
import 'package:gallery_app/src/widgets/appbar.dart';
import 'package:gallery_app/src/widgets/box_shape.dart';

class ButtonView extends StatelessWidget {
  const ButtonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const XAppBar(title: 'abc'),
      body: Center(
        child: Container(
            color: AppColors.amber_600,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: XBoxShape(),
            )),
      ),
    );
  }
}
