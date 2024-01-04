import 'package:flutter/material.dart';

enum WrapChipEnum {
  stadium(label: 'Stadium', value: StadiumBorder()),
  radious(
      label: 'Radious',
      value: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30.0))));

  final String label;
  final OutlinedBorder value;

  const WrapChipEnum({required this.label, required this.value});

  static WrapChipEnum fromValue(ShapeBorder value) {
    return values.firstWhere((element) => element.value == value,
        orElse: () => radious);
  }
}
