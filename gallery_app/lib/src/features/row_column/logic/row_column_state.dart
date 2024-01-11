import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class RowColumnState extends Equatable {
  final bool isRow;
  final MainAxisSize mainAxisSize;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final VerticalDirection verticalDirection;
  final TextDirection textDirection;
  final TextBaseline textBaseline;

  bool isChanged(RowColumnState state) {
    return (isRow != state.isRow) ||
        (mainAxisSize != state.mainAxisSize) ||
        (mainAxisAlignment != state.mainAxisAlignment) ||
        (crossAxisAlignment != state.crossAxisAlignment) ||
        (verticalDirection != state.verticalDirection) ||
        (textDirection != state.textDirection) ||
        (textBaseline != state.textBaseline);
  }

  const RowColumnState({
    required this.isRow,
    required this.mainAxisSize,
    required this.mainAxisAlignment,
    required this.crossAxisAlignment,
    required this.verticalDirection,
    required this.textDirection,
    required this.textBaseline,
  });

  factory RowColumnState.ds() => const RowColumnState(
      isRow: true,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      verticalDirection: VerticalDirection.down,
      textDirection: TextDirection.ltr,
      textBaseline: TextBaseline.alphabetic);

  RowColumnState copyWith({
    bool? isRow,
    MainAxisSize? mainAxisSize,
    MainAxisAlignment? mainAxisAlignment,
    CrossAxisAlignment? crossAxisAlignment,
    VerticalDirection? verticalDirection,
    TextDirection? textDirection,
    TextBaseline? textBaseline,
  }) {
    return RowColumnState(
      isRow: isRow ?? this.isRow,
      mainAxisSize: mainAxisSize ?? this.mainAxisSize,
      mainAxisAlignment: mainAxisAlignment ?? this.mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment ?? this.crossAxisAlignment,
      verticalDirection: verticalDirection ?? this.verticalDirection,
      textDirection: textDirection ?? this.textDirection,
      textBaseline: textBaseline ?? this.textBaseline,
    );
  }

  @override
  List<Object> get props {
    return [
      isRow,
      mainAxisSize,
      mainAxisAlignment,
      crossAxisAlignment,
      verticalDirection,
      textDirection,
      textBaseline,
    ];
  }
}
