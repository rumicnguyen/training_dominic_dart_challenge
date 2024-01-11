import 'package:flutter/material.dart';
import 'package:gallery_app/src/theme/colors.dart';

class XTitle extends StatelessWidget {
  const XTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
          color: AppColors.slate_950,
          fontSize: 20,
          fontWeight: FontWeight.w500),
    );
  }
}
