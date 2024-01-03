import 'package:flutter/material.dart';
import 'dart:math' as math;

class XContainer extends StatelessWidget {
  const XContainer(
      {super.key,
      required this.fontSize,
      required this.colors,
      required this.size,
      required this.textColor});

  final double fontSize;
  final Color colors;
  final double size;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(size / 5),
      width: size,
      height: size,
      color: colors,
      child: Transform.rotate(
        angle: math.pi / 4,
        child: Container(
          width: size,
          height: size,
          color: colors,
          alignment: Alignment.center,
          child: Transform.rotate(
            angle: -math.pi / 4,
            child: Text(
              'A',
              style: TextStyle(
                  fontSize: fontSize,
                  color: textColor,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ),
    );
  }
}
