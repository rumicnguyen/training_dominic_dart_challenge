import 'package:flutter/material.dart';
import 'package:gallery_app/src/network/data/view_item.dart';
import 'package:gallery_app/src/features/home/widget/view_item.dart';
import 'package:gallery_app/src/theme/colors.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('My widget'),
            Icon(size: 30,color: AppColors.slate_50, Icons.account_circle_rounded)
          ],
        ),
        backgroundColor: AppColors.sky_400,
        titleTextStyle: const TextStyle(
            color: AppColors.slate_50, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      body: ListView(
        children: [
          for (var item in list)
            ViewItem(
                icon: item.icon,
                title: item.title,
                description: item.description,
                routeNamed: item.routeNamed),
        ],
      ),
    );
  }
}
