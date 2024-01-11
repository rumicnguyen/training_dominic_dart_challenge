import 'package:flutter/material.dart';
import 'package:gallery_app/src/theme/colors.dart';

class MyTitle extends StatelessWidget {
  const MyTitle({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
          color: AppColors.slate_900,
          decoration: TextDecoration.none,
          fontSize: 22,
          fontWeight: FontWeight.w700),
    );
  }
}
