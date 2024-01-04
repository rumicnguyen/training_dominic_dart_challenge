import 'package:flutter/material.dart';
import 'package:gallery_app/src/theme/colors.dart';

enum WrapChipEnum {
  stadium(
      label: 'Stadium',
      value: StadiumBorder(
          side: BorderSide(
              color: AppColors.red_300, width: 2, style: BorderStyle.solid))),
  roundedRectangle(
      label: 'RoundedRectangle',
      value: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30.0)))),
  beveledRectangle(
      label: 'BeveledRectangle',
      value: BeveledRectangleBorder(
          borderRadius: BorderRadius.horizontal(left: Radius.circular(3)))),
  circular(
      label: 'Circular',
      value: BeveledRectangleBorder(
          side: BorderSide(
              color: AppColors.amber_500, width: 2, style: BorderStyle.solid))),
  continuousRectangle(
      label: 'ContinuousRectangle',
      value: ContinuousRectangleBorder(
          side: BorderSide(
              color: AppColors.lime_500, width: 2, style: BorderStyle.solid))),
  linear(
      label: 'linear',
      value: BeveledRectangleBorder(
          side: BorderSide(
              color: AppColors.blue_500, width: 2, style: BorderStyle.solid)));

  final String label;
  final OutlinedBorder value;

  const WrapChipEnum({required this.label, required this.value});

  static WrapChipEnum fromValue(ShapeBorder value) {
    return values.firstWhere((element) => element.value == value,
        orElse: () => roundedRectangle);
  }
}
