import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/src/features/stack_align/logic/stack_align_bloc.dart';
import 'package:gallery_app/src/features/stack_align/logic/stack_align_state.dart';
import 'package:gallery_app/src/network/data/row_column_enum.dart';
import 'package:gallery_app/src/network/data/stack_align_enum.dart';
import 'package:gallery_app/src/widgets/drop_down.dart';
import 'package:gallery_app/src/widgets/section.dart';

class StackAlignControl extends StatelessWidget {
  const StackAlignControl({super.key});

  @override
  Widget build(BuildContext context) {
    return XSection(
      child: Column(
        children: [
          _buildAlignment(),
          _buildTextDirection(),
          _buildStackFit(),
          _buildClip(),
        ],
      ),
    );
  }

  Widget _buildAlignment() {
    return BlocBuilder<StackAlignBloc, StackAlignState>(
      buildWhen: (previous, current) => previous.alignment != current.alignment,
      builder: (BuildContext context, StackAlignState state) => XDropDown(
        data: AlignmentEnum.values,
        value: AlignmentEnum.fromValue(state.alignment),
        label: 'Alignment',
        getTitle: (e) => e.label,
        onChange: (value) {
          context.read<StackAlignBloc>().setProp(alignment: value.value);
        },
      ),
    );
  }

  Widget _buildTextDirection() {
    return BlocBuilder<StackAlignBloc, StackAlignState>(
      buildWhen: (previous, current) =>
          previous.textDirection != current.textDirection,
      builder: (BuildContext context, StackAlignState state) => XDropDown(
        data: TextDirectionEnum.values,
        value: TextDirectionEnum.fromValue(state.textDirection),
        label: 'TextDirection',
        getTitle: (e) => e.label,
        onChange: (value) {
          context.read<StackAlignBloc>().setProp(textDirection: value.value);
        },
      ),
    );
  }

  Widget _buildStackFit() {
    return BlocBuilder<StackAlignBloc, StackAlignState>(
      buildWhen: (previous, current) => previous.stackFit != current.stackFit,
      builder: (BuildContext context, StackAlignState state) => XDropDown(
        data: StackFitEnum.values,
        value: StackFitEnum.fromValue(state.stackFit),
        label: 'StackFit',
        getTitle: (e) => e.label,
        onChange: (value) {
          context.read<StackAlignBloc>().setProp(stackFit: value.value);
        },
      ),
    );
  }

  Widget _buildClip() {
    return BlocBuilder<StackAlignBloc, StackAlignState>(
      buildWhen: (previous, current) => previous.clip != current.clip,
      builder: (BuildContext context, StackAlignState state) => XDropDown(
        data: ClipEnum.values,
        value: ClipEnum.fromValue(state.clip),
        label: 'Clip',
        getTitle: (e) => e.label,
        onChange: (value) {
          context.read<StackAlignBloc>().setProp(clip: value.value);
        },
      ),
    );
  }
}
