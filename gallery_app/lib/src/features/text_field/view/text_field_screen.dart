import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/src/features/text_field/logic/text_field_bloc.dart';
import 'package:gallery_app/src/features/text_field/logic/text_field_state.dart';

class TextFieldScreen extends StatelessWidget {
  const TextFieldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TextFieldBloc, TextFieldState>(
        buildWhen: (previous, current) => previous.isChanged(current),
        builder: (context, state) {
          return Column(
            children: [
              _buildTextField(),
              const SizedBox(height: 5.0,),
              _buildTextField(isBorder: true),
            ],
          );
        });
  }

  Widget _buildTextField({bool isBorder = false}) {
    return BlocBuilder<TextFieldBloc, TextFieldState>(
        buildWhen: (previous, current) => previous.isChanged(current),
        builder: (context, state) {
          return SizedBox(
            width: 300,
            child: TextField(
              decoration: InputDecoration(
                hintText: state.hintText ? 'hintText' : null,
                labelText: state.labelText ? 'labelText' : null,
                helperText: state.helpText ? 'helpText' : null,
                errorText: state.errorText ? 'errorText' : null,
                counterText: state.counterText ? 'counterText' : null,
                prefix: state.prefix ? const Icon(Icons.access_time) : null,
                suffix: state.suffix ? const Icon(Icons.access_alarm) : null,
                prefixIcon: state.prefixIcon
                    ? const Icon(Icons.accessible_sharp)
                    : null,
                border: isBorder ? const OutlineInputBorder() : null,
              ),
            ),
          );
        });
  }
}
