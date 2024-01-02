import 'package:flutter/cupertino.dart';

class RichText4 extends StatelessWidget {
  const RichText4({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          style: const TextStyle(
              fontSize: 30, fontWeight: FontWeight.w600, height: 1.5),
          children: [
            WidgetSpan(
              child: Container(
                alignment: Alignment.center,
                height: 75,
                width: 40,
                color: const Color(0xFFF8BBD0),
                child: const Text('G',
                    style: TextStyle(
                        color: Color(0xFF2196F3),
                        fontSize: 50,
                        fontWeight: FontWeight.w400)),
              ),
              alignment: PlaceholderAlignment.middle,
            ),
            WidgetSpan(
              child: Container(
                height: 85,
                color: const Color(0xFFFCE4EC),
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: const Text('o',
                    style: TextStyle(
                        color: Color(0xFFF44336),
                        fontSize: 50,
                        fontWeight: FontWeight.w800)),
              ),
              alignment: PlaceholderAlignment.middle,
            ),
            WidgetSpan(
              child: Container(
                height: 85,
                color: const Color(0xFFF48FB1),
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: const Text('o',
                    style: TextStyle(
                        color: Color(0xFFFFC107),
                        fontSize: 50,
                        fontWeight: FontWeight.w800)),
              ),
              alignment: PlaceholderAlignment.middle,
            ),
            WidgetSpan(
              child: Container(
                height: 75,
                color: const Color(0xFFF8BBD0),
                child: const Text('g',
                    style: TextStyle(
                        color: Color(0xFF2196F3),
                        fontSize: 50,
                        fontWeight: FontWeight.w400)),
              ),
              alignment: PlaceholderAlignment.middle,
            ),
            WidgetSpan(
              child: Container(
                height: 85,
                color: const Color(0xFFFCE4EC),
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: const Text('l',
                    style: TextStyle(
                        color: Color(0xFF4CAF50),
                        fontSize: 50,
                        fontWeight: FontWeight.w800)),
              ),
              alignment: PlaceholderAlignment.middle,
            ),
            WidgetSpan(
              child: Container(
                height: 75,
                color: const Color(0xFFF8BBD0),
                child: const Text('e',
                    style: TextStyle(
                        color: Color(0xFFF44235),
                        fontSize: 50,
                        fontWeight: FontWeight.w600)),
              ),
              alignment: PlaceholderAlignment.middle,
            ),
          ]),
    );
  }
}
