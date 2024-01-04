import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/src/features/text_field/logic/text_field_state.dart';

class TextFieldBloc extends Cubit<TextFieldState> {
  TextFieldBloc() : super(TextFieldState.ds());

  void setProp({
    bool? hintText,
    bool? labelText,
    bool? helpText,
    bool? errorText,
    bool? counterText,
    bool? prefix,
    bool? suffix,
    bool? prefixIcon,
  }){
    emit(state.copyWith(
      hintText: hintText ?? hintText,
      labelText: labelText ?? labelText,
      helpText: helpText ?? helpText,
      errorText: errorText ?? errorText,
      counterText: counterText ?? counterText,
      prefix: prefix ?? prefix,
      suffix: suffix ?? suffix,
      prefixIcon: prefixIcon ?? prefixIcon,
    ));
  }
}
