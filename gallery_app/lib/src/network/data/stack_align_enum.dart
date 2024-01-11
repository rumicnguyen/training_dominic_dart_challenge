import 'package:flutter/material.dart';

enum AlignmentEnum {
  center(label: 'center', value: Alignment.center),
  centerLeft(label: 'centerLeft', value: Alignment.centerLeft),
  centerRight(label: 'centerRight', value: Alignment.centerRight),
  bottomLeft(label: 'bottomLeft', value: Alignment.bottomLeft),
  bottomCenter(label: 'bottomCenter', value: Alignment.bottomCenter),
  bottomRight(label: 'bottomRight', value: Alignment.bottomRight),
  topLeft(label: 'topLeft', value: Alignment.topLeft),
  topCenter(label: 'topCenter', value: Alignment.topCenter),
  topRight(label: 'topRight', value: Alignment.topRight);

  final String label;
  final Alignment value;

  const AlignmentEnum({required this.label, required this.value});

  static AlignmentEnum fromValue(Alignment value) {
    return values.firstWhere((element) => element.value == value,
        orElse: () => center);
  }
}

enum StackFitEnum {
  loose(label: 'loose', value: StackFit.loose),
  expand(label: 'expand', value: StackFit.expand),
  passthrough(label: 'passthrough', value: StackFit.passthrough);

  final String label;
  final StackFit value;

  const StackFitEnum({required this.label, required this.value});

  static StackFitEnum fromValue(StackFit value) {
    return values.firstWhere((element) => element.value == value,
        orElse: () => loose);
  }
}

enum ClipEnum {
  antiAlias(label: 'antiAlias', value: Clip.antiAlias),
  antiAliasWithSaveLayer(
      label: 'antiAliasWithSaveLayer', value: Clip.antiAliasWithSaveLayer),
  none(label: 'none', value: Clip.none),
  hardEdge(label: 'hardEdge', value: Clip.hardEdge);

  final String label;
  final Clip value;

  const ClipEnum({required this.label, required this.value});

  static ClipEnum fromValue(Clip value) {
    return values.firstWhere((element) => element.value == value,
        orElse: () => hardEdge);
  }
}
