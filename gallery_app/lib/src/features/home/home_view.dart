import 'package:flutter/material.dart';
import 'package:gallery_app/src/features/home/model/view_item_model.dart';
import 'package:gallery_app/src/features/home/widget/view_item.dart';

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
            Icon(size: 30,color: Colors.white, Icons.account_circle_rounded)
          ],
        ),
        backgroundColor: Colors.cyan,
        titleTextStyle: const TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
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
