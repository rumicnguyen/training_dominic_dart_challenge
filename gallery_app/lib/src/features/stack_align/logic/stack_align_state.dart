import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class StackAlignState extends Equatable {
  final Alignment alignment;
  final TextDirection textDirection;
  final StackFit stackFit;
  final Clip clip;
  const StackAlignState({
    required this.alignment,
    required this.textDirection,
    required this.stackFit,
    required this.clip,
  });

  bool isChanged(StackAlignState stackAlignState) {
    return alignment != stackAlignState.alignment ||
        textDirection != stackAlignState.textDirection ||
        stackFit != stackAlignState.stackFit ||
        clip != stackAlignState.clip;
  }

  factory StackAlignState.ds() => const StackAlignState(
      alignment: Alignment.center,
      textDirection: TextDirection.ltr,
      stackFit: StackFit.loose,
      clip: Clip.hardEdge);

  StackAlignState copyWith({
    Alignment? alignment,
    TextDirection? textDirection,
    StackFit? stackFit,
    Clip? clip,
  }) {
    return StackAlignState(
      alignment: alignment ?? this.alignment,
      textDirection: textDirection ?? this.textDirection,
      stackFit: stackFit ?? this.stackFit,
      clip: clip ?? this.clip,
    );
  }

  @override
  List<Object> get props => [alignment, textDirection, stackFit, clip];
}
