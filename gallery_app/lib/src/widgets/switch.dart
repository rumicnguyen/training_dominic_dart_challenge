import 'package:flutter/material.dart';
import 'package:gallery_app/src/features/wrap_chip/widget/title.dart';
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
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          XTitle(title: label),
          _buildWithNonLabel(),
        ],
      ),
    );
  }

  Widget _buildWithNonLabel() {
    return Switch(
      inactiveTrackColor: AppColors.slate_50,
      value: value,
      activeColor: AppColors.blue_400,
      onChanged: (bool value) {
        onChange(value);
      },
    );
  }
}
