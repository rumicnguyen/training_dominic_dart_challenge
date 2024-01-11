import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class WrapChipState extends Equatable {
  final bool isElevation;
  final bool isAvatar;
  final bool isDeleteIcon;
  final bool isSpacing;
  final bool isRunSpacing;
  final OutlinedBorder outlinedBorder;

  const WrapChipState({
    required this.isElevation,
    required this.isAvatar,
    required this.isDeleteIcon,
    required this.isSpacing,
    required this.isRunSpacing,
    required this.outlinedBorder,
  });

  factory WrapChipState.ds() => const WrapChipState(
      isElevation: false,
      isAvatar: false,
      isDeleteIcon: false,
      isSpacing: false,
      isRunSpacing: false,
      outlinedBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30.0))));

  bool isChanged(WrapChipState wrapChipState) {
    return (wrapChipState.isElevation != isElevation) ||
        (wrapChipState.isAvatar != isAvatar) ||
        (wrapChipState.isDeleteIcon != isDeleteIcon) ||
        (wrapChipState.isSpacing != isSpacing) ||
        (wrapChipState.isRunSpacing != isRunSpacing) ||
        (wrapChipState.outlinedBorder != outlinedBorder);
  }

  WrapChipState copyWith({
    bool? isElevation,
    bool? isAvatar,
    bool? isDeleteIcon,
    bool? isSpacing,
    bool? isRunSpacing,
    OutlinedBorder? outlinedBorder,
  }) {
    return WrapChipState(
      isElevation: isElevation ?? this.isElevation,
      isAvatar: isAvatar ?? this.isAvatar,
      isDeleteIcon: isDeleteIcon ?? this.isDeleteIcon,
      isSpacing: isSpacing ?? this.isSpacing,
      isRunSpacing: isRunSpacing ?? this.isRunSpacing,
      outlinedBorder: outlinedBorder ?? this.outlinedBorder,
    );
  }

  @override
  List<Object> get props {
    return [
      isElevation,
      isAvatar,
      isDeleteIcon,
      isSpacing,
      isRunSpacing,
      outlinedBorder,
    ];
  }
}
