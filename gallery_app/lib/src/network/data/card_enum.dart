import 'package:flutter/material.dart';

enum BorderRadiusEnum {
  none(label: 'None', value: BorderRadius.all(Radius.zero)),
  all(label: 'All', value: BorderRadius.all(Radius.circular(30.0))),
  circular(label: 'Circular', value: BorderRadius.all(Radius.circular(40.0))),
  horizontal(
      label: 'Horizontal',
      value: BorderRadius.horizontal(left: Radius.circular(13.0))),
  vertical(
      label: 'Vertical',
      value: BorderRadius.vertical(bottom: Radius.elliptical(30.0, 10.0)));

  final String label;
  final BorderRadius value;

  const BorderRadiusEnum({required this.label, required this.value});

  static BorderRadiusEnum fromValue(BorderRadius value) {
    return values.firstWhere((element) => element.value == value,
        orElse: () => none);
  }
}

enum BackgroundEnum {
  color(label: 'color', value: 'color'),
  gradient(
    label: 'gradient',
    value: 'gradient',
  );

  final String label;
  final String value;

  const BackgroundEnum({required this.label, required this.value});
  static BackgroundEnum fromValue(value) {
    return values.firstWhere((element) => element.value == value,
        orElse: () => color);
  }
}

enum BlendModeEnum {
  color(label: 'color', value: BlendMode.color),
  darken(label: 'darken', value: BlendMode.darken),
  dst(label: 'dst', value: BlendMode.dst),
  difference(label: 'difference', value: BlendMode.difference),
  clear(label: 'clear', value: BlendMode.clear),
  xor(label: 'xor', value: BlendMode.xor),
  src(label: 'src', value: BlendMode.src);

  final String label;
  final BlendMode value;

  const BlendModeEnum({required this.label, required this.value});
  static BlendModeEnum fromValue(value) {
    return values.firstWhere((element) => element.value == value,
        orElse: () => src);
  }
}
