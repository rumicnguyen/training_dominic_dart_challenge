import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:gallery_app/src/features/row_column/widget/container.dart';
import 'package:gallery_app/src/features/row_column/widget/drop_down.dart';
import 'package:gallery_app/src/features/row_column/widget/radio_button.dart';

class RowColumnView extends StatelessWidget {
  const RowColumnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row & Column'),
        backgroundColor: const Color(0xFF2196F3),
        titleTextStyle: const TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Column(
        children: [
          Container(
            color: const Color(0xFFFFEB3B),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                XContainer(
                  fontSize: 35,
                  colors: Colors.black,
                  size: 50,
                  textColor: Color(0xFFFFEB3B),
                ),
                XContainer(
                  fontSize: 50,
                  colors: Colors.black,
                  size: 75,
                  textColor: Color(0xFFFFEB3B),
                ),
                XContainer(
                  fontSize: 35,
                  colors: Colors.black,
                  size: 50,
                  textColor: Color(0xFFFFEB3B),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const XRadioButton(),
          const Column(
            children: [XDropDown()],
          )
        ],
      ),
    );
  }
}
