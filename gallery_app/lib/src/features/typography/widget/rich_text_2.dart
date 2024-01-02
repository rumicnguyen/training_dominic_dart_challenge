import 'package:flutter/material.dart';

class RichText2 extends StatelessWidget {
  const RichText2({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: 'First',
          style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w400,
              height: 1.5),
          children: [
            const TextSpan(
                text: '→', style: TextStyle(color: Colors.red, fontSize: 50)),
            const TextSpan(
                text: 'second',
                style: TextStyle(color: Color(0xFF737373), fontSize: 30)),
            WidgetSpan(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                width: 75,
                height: 75,
                color: const Color(0xFFFFC107),
              ),
            ),
            const TextSpan(
                text: 'third',
                style: TextStyle(color: Color(0xFF737373), fontSize: 30)),
          ]),
      textAlign: TextAlign.center,
      selectionColor: const Color(0xFF737373),
    );
  }
}
