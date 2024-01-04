import 'package:flutter/material.dart';
import 'package:gallery_app/src/theme/colors.dart';
import 'package:gallery_app/src/widgets/title.dart';

class XDropDown<T> extends StatelessWidget {
  const XDropDown(
      {super.key,
      this.label = '',
      required this.data,
      required this.onChange,
      required this.value,
      required this.getTitle,
      this.isExpand = true});

  final String label;
  final List<T> data;
  final T value;
  final void Function(T) onChange;
  final String Function(T) getTitle;
  final bool isExpand;

  @override
  Widget build(BuildContext context) {
    return label != '' ? _buildWithLabel() : _buildWithLabel();
  }

  Widget _buildWithLabel() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        XTitle(title: label),
        _buildWithNonLabel(),
      ],
    );
  }

  Widget _buildWithNonLabel() {
    return isExpand ? _buildWithExpanded() : _buildWithoutExpanded();
  }

  Widget _buildWithoutExpanded() {
    return DropdownButton<T>(
      style: const TextStyle(
          fontSize: 20,
          color: AppColors.slate_900,
          fontWeight: FontWeight.w400),
      icon: const Icon(Icons.expand_more),
      value: value,
      underline: Container(
        height: 1,
        color: AppColors.gray_400,
      ),
      items: data.map((e) {
        return DropdownMenuItem<T>(
          value: e,
          child: Text(getTitle(e)),
        );
      }).toList(),
      onChanged: (value) {
        if (value != null) {
          onChange(value);
        }
      },
    );
  }

  Widget _buildWithExpanded() {
    return Expanded(
      child: DropdownButton<T>(
        style: const TextStyle(
            fontSize: 20,
            color: AppColors.slate_900,
            fontWeight: FontWeight.w400),
        icon: const Icon(Icons.expand_more),
        isExpanded: true,
        value: value,
        underline: Container(
          height: 1,
          color: AppColors.gray_400,
        ),
        items: data.map((e) {
          return DropdownMenuItem<T>(
            value: e,
            child: Text(getTitle(e)),
          );
        }).toList(),
        onChanged: (value) {
          if (value != null) {
            onChange(value);
          }
        },
      ),
    );
  }
}
