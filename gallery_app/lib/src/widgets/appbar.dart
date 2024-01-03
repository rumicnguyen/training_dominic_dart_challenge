import 'package:flutter/material.dart';
import 'package:gallery_app/src/theme/colors.dart';

AppBar appBar({String title = ''}) => AppBar(
      title: Text(title),
      backgroundColor: AppColors.sky_500,
      titleTextStyle: const TextStyle(
          color: AppColors.slate_50, fontSize: 20, fontWeight: FontWeight.bold),
      iconTheme: const IconThemeData(
        color: AppColors.slate_50,
      ),
    );
