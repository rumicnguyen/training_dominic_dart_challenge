import 'package:flutter/material.dart';

enum RowColumnEnum {
  row,
  column;
}

enum MainAxisSizeEnum {
  max(label: 'max', value: MainAxisSize.max),
  min(label: 'min', value: MainAxisSize.min);

  static MainAxisSizeEnum fromValue(MainAxisSize value) {
    return values.firstWhere((element) => element.value == value,
        orElse: () => max);
  }

  const MainAxisSizeEnum({required this.label, required this.value});

  final String label;
  final MainAxisSize value;
}

enum MainAxisAlignmentEnum {
  center(label: 'center', value: MainAxisAlignment.center),
  end(label: 'end', value: MainAxisAlignment.end),
  start(label: 'start', value: MainAxisAlignment.start),
  spaceBetween(label: 'spaceBetween', value: MainAxisAlignment.spaceBetween),
  spaceEvenly(label: 'spaceEvenly', value: MainAxisAlignment.spaceEvenly),
  spaceAround(label: 'spaceAround', value: MainAxisAlignment.spaceAround);

  static MainAxisAlignmentEnum fromValue(MainAxisAlignment value) {
    return values.firstWhere((element) => element.value == value,
        orElse: () => start);
  }

  const MainAxisAlignmentEnum({required this.label, required this.value});

  final String label;
  final MainAxisAlignment value;
}

enum CrossAxisAlignmentEnum {
  center(label: 'center', value: CrossAxisAlignment.center),
  end(label: 'end', value: CrossAxisAlignment.end),
  start(label: 'start', value: CrossAxisAlignment.start),
  baseline(label: 'baseline', value: CrossAxisAlignment.baseline),
  stretch(label: 'stretch', value: CrossAxisAlignment.stretch);

  static CrossAxisAlignmentEnum fromValue(CrossAxisAlignment value) {
    return values.firstWhere((element) => element.value == value,
        orElse: () => start);
  }

  const CrossAxisAlignmentEnum({required this.label, required this.value});

  final String label;
  final CrossAxisAlignment value;
}

enum VerticalDirectionEnum {
  up(label: 'up', value: VerticalDirection.up),
  down(label: 'down', value: VerticalDirection.down);

  static VerticalDirectionEnum fromValue(VerticalDirection value) {
    return values.firstWhere((element) => element.value == value,
        orElse: () => up);
  }

  const VerticalDirectionEnum({required this.label, required this.value});
  final String label;
  final VerticalDirection value;
}

enum TextDirectionEnum {
  ltr(label: 'ltr', value: TextDirection.ltr),
  rtl(label: 'rtl', value: TextDirection.rtl);

  static TextDirectionEnum fromValue(TextDirection value) {
    return values.firstWhere((element) => element.value == value,
        orElse: () => ltr);
  }

  const TextDirectionEnum({required this.label, required this.value});
  final String label;
  final TextDirection value;
}

enum TextBaselineEnum {
  alphabetic(label: 'alphabetic', value: TextBaseline.alphabetic),
  ideographic(label: 'ideographic', value: TextBaseline.ideographic);

  static TextBaselineEnum fromValue(TextBaseline value) {
    return values.firstWhere((element) => element.value == value,
        orElse: () => alphabetic);
  }

  const TextBaselineEnum({required this.label, required this.value});
  final String label;
  final TextBaseline value;
}
