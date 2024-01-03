import 'package:flutter/cupertino.dart';
import 'package:gallery_app/src/theme/colors.dart';

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
                color: AppColors.red_300,
                child: const Text('G',
                    style: TextStyle(
                        color: AppColors.blue_500,
                        fontSize: 50,
                        fontWeight: FontWeight.w400)),
              ),
              alignment: PlaceholderAlignment.middle,
            ),
            WidgetSpan(
              child: Container(
                height: 85,
                color: AppColors.red_200,
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: const Text('o',
                    style: TextStyle(
                        color: AppColors.red_500,
                        fontSize: 50,
                        fontWeight: FontWeight.w800)),
              ),
              alignment: PlaceholderAlignment.middle,
            ),
            WidgetSpan(
              child: Container(
                height: 85,
                color: AppColors.red_400,
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: const Text('o',
                    style: TextStyle(
                        color: AppColors.amber_400,
                        fontSize: 50,
                        fontWeight: FontWeight.w800)),
              ),
              alignment: PlaceholderAlignment.middle,
            ),
            WidgetSpan(
              child: Container(
                height: 75,
                color: AppColors.red_300,
                child: const Text('g',
                    style: TextStyle(
                        color: AppColors.blue_500,
                        fontSize: 50,
                        fontWeight: FontWeight.w400)),
              ),
              alignment: PlaceholderAlignment.middle,
            ),
            WidgetSpan(
              child: Container(
                height: 85,
                color: AppColors.red_200,
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: const Text('l',
                    style: TextStyle(
                        color: AppColors.lime_600,
                        fontSize: 50,
                        fontWeight: FontWeight.w800)),
              ),
              alignment: PlaceholderAlignment.middle,
            ),
            WidgetSpan(
              child: Container(
                height: 75,
                color: AppColors.red_300,
                child: const Text('e',
                    style: TextStyle(
                        color: AppColors.red_500,
                        fontSize: 50,
                        fontWeight: FontWeight.w600)),
              ),
              alignment: PlaceholderAlignment.middle,
            ),
          ]),
    );
  }
}
