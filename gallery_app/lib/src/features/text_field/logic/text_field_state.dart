import 'package:equatable/equatable.dart';

class TextFieldState extends Equatable {
  final bool hintText;
  final bool labelText;
  final bool helpText;
  final bool errorText;
  final bool counterText;
  final bool prefix;
  final bool suffix;
  final bool prefixIcon;
  const TextFieldState({
    required this.hintText,
    required this.labelText,
    required this.helpText,
    required this.errorText,
    required this.counterText,
    required this.prefix,
    required this.suffix,
    required this.prefixIcon,
  });

  factory TextFieldState.ds() => const TextFieldState(
      hintText: true,
      labelText: true,
      helpText: true,
      errorText: true,
      counterText: true,
      prefix: true,
      suffix: true,
      prefixIcon: true);

  bool isChanged(TextFieldState textFieldState) {
    return hintText != textFieldState.hintText ||
        labelText != textFieldState.labelText ||
        helpText != textFieldState.helpText ||
        errorText != textFieldState.errorText ||
        counterText != textFieldState.counterText ||
        prefix != textFieldState.prefix ||
        suffix != textFieldState.suffix ||
        prefixIcon != textFieldState.prefixIcon;
  }

  TextFieldState copyWith({
    bool? hintText,
    bool? labelText,
    bool? helpText,
    bool? errorText,
    bool? counterText,
    bool? prefix,
    bool? suffix,
    bool? prefixIcon,
  }) {
    return TextFieldState(
      hintText: hintText ?? this.hintText,
      labelText: labelText ?? this.labelText,
      helpText: helpText ?? this.helpText,
      errorText: errorText ?? this.errorText,
      counterText: counterText ?? this.counterText,
      prefix: prefix ?? this.prefix,
      suffix: suffix ?? this.suffix,
      prefixIcon: prefixIcon ?? this.prefixIcon,
    );
  }

  @override
  List<Object> get props {
    return [
      hintText,
      labelText,
      helpText,
      errorText,
      counterText,
      prefix,
      suffix,
      prefixIcon,
    ];
  }
}
