import 'package:flutter/material.dart';
import 'package:gallery_app/src/theme/colors.dart';

class XAppBar extends StatelessWidget implements PreferredSizeWidget {
  const XAppBar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      backgroundColor: AppColors.sky_500,
      titleTextStyle: const TextStyle(
          color: AppColors.slate_50, fontSize: 20, fontWeight: FontWeight.bold),
      iconTheme: const IconThemeData(
        color: AppColors.slate_50,
      ),
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
