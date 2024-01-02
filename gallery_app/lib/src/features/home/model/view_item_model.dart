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

List<ViewItemModel> list = [
  ViewItemModel(
      icon: Icons.phone_android,
      title: 'Cupertino',
      description: 'Beautiful and high-fidelity widgets for current iOS design language.',
      routeNamed: 'cupertino'),
  ViewItemModel(
      icon: Icons.text_fields,
      title: 'Typography',
      description: 'All off predefined text styles.',
      routeNamed: 'typography'),
  ViewItemModel(
      icon: Icons.menu,
      title: 'Button app bar',
      description: 'Button application bar.',
      routeNamed: 'button-app-bar'),
  ViewItemModel(
      icon: Icons.web,
      title: 'Button',
      description: 'RaisedButton, FlatButton, DropDownButton, FloatingActionButton, IconButton, InkWell, RawMaterialButton.',
      routeNamed: 'button'),
  ViewItemModel(
      icon: Icons.list,
      title: 'List',
      description: 'Scrolling list layout.',
      routeNamed: 'list'),
  ViewItemModel(
      icon: Icons.book,
      title: 'Card',
      description: 'Card with rounded and decoration.',
      routeNamed: 'card'),
  ViewItemModel(
      icon: Icons.list,
      title: 'List Title',
      description: 'A single fixed-height row that typically contains some text as well as leading or trailing icon.',
      routeNamed: 'list-title'),
  ViewItemModel(
      icon: Icons.tab_unselected,
      title: 'Alert',
      description: 'Alerts, SnackBar & Tooltip.',
      routeNamed: 'alert'),
  ViewItemModel(
      icon: Icons.menu,
      title: 'Text Field',
      description: 'Text Field, Text Field Form.',
      routeNamed: 'text-field'),
  ViewItemModel(
      icon: Icons.graphic_eq,
      title: 'Row & Column',
      description: 'A widget that display its children in a horizontal and vertical array.',
      routeNamed: 'row-column'),
  ViewItemModel(
      icon: Icons.edit_attributes,
      title: 'Wrap & Chip',
      description: 'Wrap & Chip.',
      routeNamed: 'wrap-chip'),
  ViewItemModel(
      icon: Icons.copy,
      title: 'Stack & Align',
      description: 'A widget tha positions its children relative to the edges of its box.',
      routeNamed: 'stack-align'),
];