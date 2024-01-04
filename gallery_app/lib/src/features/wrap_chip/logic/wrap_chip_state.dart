import 'package:equatable/equatable.dart';

class WrapChipState extends Equatable {
  final bool isElevation;
  final bool isAvatar;
  final bool isDeleteIcon;
  final bool isSpacing;
  final bool isRunSpacing;
  final String string;

  const WrapChipState({
    required this.isElevation,
    required this.isAvatar,
    required this.isDeleteIcon,
    required this.isSpacing,
    required this.isRunSpacing,
    required this.string,
  });

  factory WrapChipState.ds()=> const WrapChipState(isElevation: false, isAvatar: false, isDeleteIcon: false, isSpacing: false, isRunSpacing: false, string: 'string');

  WrapChipState copyWith({
    bool? isElevation,
    bool? isAvatar,
    bool? isDeleteIcon,
    bool? isSpacing,
    bool? isRunSpacing,
    String? string,
  }) {
    return WrapChipState(
      isElevation: isElevation ?? this.isElevation,
      isAvatar: isAvatar ?? this.isAvatar,
      isDeleteIcon: isDeleteIcon ?? this.isDeleteIcon,
      isSpacing: isSpacing ?? this.isSpacing,
      isRunSpacing: isRunSpacing ?? this.isRunSpacing,
      string: string ?? this.string,
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
      string,
    ];
  }
}
