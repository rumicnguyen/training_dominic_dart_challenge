import 'package:flutter/material.dart';
import 'package:gallery_app/src/theme/colors.dart';

class RichText2 extends StatelessWidget {
  const RichText2({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: 'First',
          style: const TextStyle(
              color: AppColors.slate_900,
              fontSize: 20,
              fontWeight: FontWeight.w400,
              height: 1.5),
          children: [
            const TextSpan(
                text: '→', style: TextStyle(color: AppColors.red_500, fontSize: 50)),
            const TextSpan(
                text: 'second',
                style: TextStyle(color: AppColors.gray_500, fontSize: 30)),
            WidgetSpan(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                width: 75,
                height: 75,
                color: AppColors.amber_400,
              ),
            ),
            const TextSpan(
                text: 'third',
                style: TextStyle(color: AppColors.gray_500, fontSize: 30)),
          ]),
      textAlign: TextAlign.center,
      selectionColor: AppColors.gray_500,
    );
  }
}
