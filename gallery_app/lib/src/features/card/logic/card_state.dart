import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:gallery_app/src/network/data/card_enum.dart';

class CardState extends Equatable {
  final bool isBorder;
  final BorderRadius borderRadius;
  final bool isBoxShadow;
  final String background;
  final BlendMode blendMode;
  const CardState({
    required this.isBorder,
    required this.borderRadius,
    required this.isBoxShadow,
    required this.background,
    required this.blendMode,
  });

  factory CardState.ds() => CardState(
      isBorder: true,
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      isBoxShadow: true,
      background: BackgroundEnum.color.value,
      blendMode: BlendMode.clear);

  bool isChanged(CardState cardState) {
    return (isBorder != cardState.isBorder) ||
        (borderRadius != cardState.borderRadius) ||
        (isBoxShadow != cardState.isBoxShadow) ||
        (background != cardState.background) ||
        (blendMode != cardState.blendMode);
  }

  CardState copyWith({
    bool? isBorder,
    BorderRadius? borderRadius,
    bool? isBoxShadow,
    String? background,
    BlendMode? blendMode,
  }) {
    return CardState(
      isBorder: isBorder ?? this.isBorder,
      borderRadius: borderRadius ?? this.borderRadius,
      isBoxShadow: isBoxShadow ?? this.isBoxShadow,
      background: background ?? this.background,
      blendMode: blendMode ?? this.blendMode,
    );
  }

  @override
  List<Object> get props {
    return [
      isBorder,
      borderRadius,
      isBoxShadow,
      background,
      blendMode,
    ];
  }
}
