import 'package:flutter/material.dart';

enum FloatActionButtonEnum {
  endDocked(label: 'endDocked', value: FloatingActionButtonLocation.endDocked),
  centerDocked(
      label: 'centerDocked', value: FloatingActionButtonLocation.centerDocked),
  centerFloat(
      label: 'centerFloat', value: FloatingActionButtonLocation.centerFloat),
  endFloat(label: 'endFloat', value: FloatingActionButtonLocation.endFloat);

  final String label;
  final FloatingActionButtonLocation value;

  const FloatActionButtonEnum({required this.label, required this.value});
  static FloatActionButtonEnum fromValue(value) {
    return values.firstWhere((element) => element.value == value,
        orElse: () => endDocked);
  }
}
