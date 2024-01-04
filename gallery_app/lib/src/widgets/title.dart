import 'package:flutter/cupertino.dart';
import 'package:gallery_app/src/theme/colors.dart';

class XTitle extends StatelessWidget {
  const XTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: const TextStyle(
            fontSize: 20,
            color: AppColors.slate_900,
            fontWeight: FontWeight.w400));
  }
}
