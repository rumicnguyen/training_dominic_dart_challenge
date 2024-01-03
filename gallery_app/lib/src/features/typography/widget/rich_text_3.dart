import 'package:flutter/material.dart';
import 'package:gallery_app/src/theme/colors.dart';

class RichText3 extends StatelessWidget {
  const RichText3({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
          text: 'One ',
          style: TextStyle(
              color: AppColors.slate_900,
              fontSize: 20,
              fontWeight: FontWeight.w600,
              height: 1.5),
          children: [
            TextSpan(
                text: 'Two',
                style: TextStyle(
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                    decoration: TextDecoration.underline)),
            TextSpan(text: ' Three Four ', style: TextStyle(fontSize: 20)),
            TextSpan(
                text: 'Five',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                    color: AppColors.red_500)),
          ]),
      textAlign: TextAlign.center,
      selectionColor: AppColors.gray_500,
    );
  }
}
