import 'package:flutter/material.dart';

class ViewItemModel {
  final IconData icon;
  final String title;
  final String description;
  final String routeNamed;
  ViewItemModel({
    required this.icon,
    required this.title,
    required this.description,
    required this.routeNamed,
  });
}
