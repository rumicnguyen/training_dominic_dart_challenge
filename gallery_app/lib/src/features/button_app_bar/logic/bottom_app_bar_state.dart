import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class BottomAppBarState extends Equatable {
  final bool isfloatActionButton;
  final bool isNotch;
  final FloatingActionButtonLocation floatingActionButtonLocation;
  const BottomAppBarState({
    required this.isfloatActionButton,
    required this.isNotch,
    required this.floatingActionButtonLocation,
  });

  factory BottomAppBarState.ds() => const BottomAppBarState(
      isfloatActionButton: true,
      isNotch: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked);

  bool isChanged(BottomAppBarState state) {
    return isfloatActionButton != state.isfloatActionButton ||
        isNotch != state.isNotch ||
        floatingActionButtonLocation != state.floatingActionButtonLocation;
  }

  BottomAppBarState copyWith({
    bool? isfloatActionButton,
    bool? isNotch,
    FloatingActionButtonLocation? floatingActionButtonLocation,
  }) {
    return BottomAppBarState(
      isfloatActionButton: isfloatActionButton ?? this.isfloatActionButton,
      isNotch: isNotch ?? this.isNotch,
      floatingActionButtonLocation:
          floatingActionButtonLocation ?? this.floatingActionButtonLocation,
    );
  }

  @override
  List<Object> get props =>
      [isfloatActionButton, isNotch, floatingActionButtonLocation];
}
