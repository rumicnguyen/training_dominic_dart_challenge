import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ViewItem extends StatelessWidget {
  const ViewItem(
      {super.key,
      required this.icon,
      required this.title,
      required this.description,
      required this.routeNamed});

  final IconData icon;
  final String title;
  final String description;
  final String routeNamed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: () {
            context.go('/$routeNamed');
          },
          leading: Icon(icon),
          title: Text(title),
          subtitle: Text(description),
        ),
        const Divider(height: 0),
      ],
    );
  }
}
