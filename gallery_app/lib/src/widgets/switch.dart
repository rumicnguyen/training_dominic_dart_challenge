import 'package:flutter/material.dart';
import 'package:gallery_app/src/theme/colors.dart';

class XSwitch extends StatelessWidget {
  const XSwitch(
      {super.key,
      this.label = '',
      required this.onChange,
      required this.value});

  final String label;
  final bool value;
  final void Function(bool) onChange;

  @override
  Widget build(BuildContext context) {
    return label != '' ? _buildWithLabel() : _buildWithLabel();
  }

  Widget _buildWithLabel() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: _customStyle()),
        _buildWithNonLabel(),
      ],
    );
  }

  Widget _buildWithNonLabel() {
    return Switch(
      value: value,
      activeColor: AppColors.blue_400,
      onChanged: (bool value) {
        onChange(value);
      },
    );
  }

  TextStyle _customStyle() => const TextStyle(
      fontSize: 20, color: AppColors.slate_900, fontWeight: FontWeight.w400);
}
