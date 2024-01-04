import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/src/features/text_field/logic/text_field_bloc.dart';
import 'package:gallery_app/src/features/text_field/logic/text_field_state.dart';
import 'package:gallery_app/src/widgets/switch.dart';

class TextFieldControl extends StatelessWidget {
  const TextFieldControl({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Column(
        children: [
          _buildHintText(),
          _buildLabelText(),
          _buildHelpText(),
          _buildErrorText(),
          _buildCounterText(),
          _buildPrefix(),
          _buildSuffix(),
          _buildPrefixIcon(),
        ],
      ),
    );
  }

  Widget _buildHintText() {
    return BlocBuilder<TextFieldBloc, TextFieldState>(
      buildWhen: (previous, current) => previous.hintText != current.hintText,
      builder: (BuildContext context, TextFieldState state) {
        return XSwitch(
          value: state.hintText,
          label: 'HintText',
          onChange: (value) {
            context.read<TextFieldBloc>().setProp(hintText: value);
          },
        );
      },
    );
  }

  Widget _buildLabelText() {
    return BlocBuilder<TextFieldBloc, TextFieldState>(
      buildWhen: (previous, current) => previous.labelText != current.labelText,
      builder: (BuildContext context, TextFieldState state) {
        return XSwitch(
          value: state.labelText,
          label: 'LabelText',
          onChange: (value) {
            context.read<TextFieldBloc>().setProp(labelText: value);
          },
        );
      },
    );
  }

  Widget _buildHelpText() {
    return BlocBuilder<TextFieldBloc, TextFieldState>(
      buildWhen: (previous, current) => previous.helpText != current.helpText,
      builder: (BuildContext context, TextFieldState state) {
        return XSwitch(
          value: state.helpText,
          label: 'HelpText',
          onChange: (value) {
            context.read<TextFieldBloc>().setProp(helpText: value);
          },
        );
      },
    );
  }

  Widget _buildErrorText() {
    return BlocBuilder<TextFieldBloc, TextFieldState>(
      buildWhen: (previous, current) => previous.errorText != current.errorText,
      builder: (BuildContext context, TextFieldState state) {
        return XSwitch(
          value: state.errorText,
          label: 'ErrorText',
          onChange: (value) {
            context.read<TextFieldBloc>().setProp(errorText: value);
          },
        );
      },
    );
  }

  Widget _buildCounterText() {
    return BlocBuilder<TextFieldBloc, TextFieldState>(
      buildWhen: (previous, current) =>
          previous.counterText != current.counterText,
      builder: (BuildContext context, TextFieldState state) {
        return XSwitch(
          value: state.counterText,
          label: 'CounterText',
          onChange: (value) {
            context.read<TextFieldBloc>().setProp(counterText: value);
          },
        );
      },
    );
  }

  Widget _buildPrefix() {
    return BlocBuilder<TextFieldBloc, TextFieldState>(
      buildWhen: (previous, current) => previous.prefix != current.prefix,
      builder: (BuildContext context, TextFieldState state) {
        return XSwitch(
          value: state.prefix,
          label: 'Prefix',
          onChange: (value) {
            context.read<TextFieldBloc>().setProp(prefix: value);
          },
        );
      },
    );
  }

  Widget _buildSuffix() {
    return BlocBuilder<TextFieldBloc, TextFieldState>(
      buildWhen: (previous, current) => previous.suffix != current.suffix,
      builder: (BuildContext context, TextFieldState state) {
        return XSwitch(
          value: state.suffix,
          label: 'Suffix',
          onChange: (value) {
            context.read<TextFieldBloc>().setProp(suffix: value);
          },
        );
      },
    );
  }

  Widget _buildPrefixIcon() {
    return BlocBuilder<TextFieldBloc, TextFieldState>(
      buildWhen: (previous, current) =>
          previous.prefixIcon != current.prefixIcon,
      builder: (BuildContext context, TextFieldState state) {
        return XSwitch(
          value: state.prefixIcon,
          label: 'PrefixIcon',
          onChange: (value) {
            context.read<TextFieldBloc>().setProp(prefixIcon: value);
          },
        );
      },
    );
  }
}
