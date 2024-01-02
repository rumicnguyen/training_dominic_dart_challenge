import 'package:flutter/cupertino.dart';

class RichText1 extends StatelessWidget {
  const RichText1({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        text:
            'Creates a text widget. If the [style] argument is null, the text will use the style from the...',
        style: TextStyle(
            color: Color(0xFFEA80FC),
            fontSize: 25,
            fontWeight: FontWeight.w700,
            height: 1.5),
      ),
      textAlign: TextAlign.center,
    );
  }
}