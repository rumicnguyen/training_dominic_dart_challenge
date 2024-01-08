import 'package:flutter/material.dart';
import 'package:gallery_app/src/theme/colors.dart';

class XDropDownButton extends StatefulWidget {
  const XDropDownButton({super.key, this.isExpand = false});
  final bool isExpand;
  @override
  State<XDropDownButton> createState() => _XDropDownButtonState();
}

class _XDropDownButtonState extends State<XDropDownButton> {
  var data = <String>['DropDown', 'dropdown', 'Drop down'];
  String value = 'DropDown';

  void onChange(String e) {
    setState(() {
      value = e;
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.isExpand ? _buildExpand() : _buildWithoutExpand();
  }

  Widget _buildExpand() {
    return DropdownButton(
      style: const TextStyle(
          fontSize: 20,
          color: AppColors.slate_900,
          fontWeight: FontWeight.w400),
      icon: const Icon(Icons.expand_more),
      value: value,
      isExpanded: true,
      underline: Container(
        height: 1,
        color: AppColors.gray_400,
      ),
      items: data.map((e) {
        return DropdownMenuItem(
          value: e,
          child: Text(e),
        );
      }).toList(),
      onChanged: (value) {
        if (value != null) {
          onChange(value);
        }
      },
    );
  }

  Widget _buildWithoutExpand() {
    return DropdownButton(
      style: const TextStyle(
          fontSize: 20,
          color: AppColors.slate_900,
          fontWeight: FontWeight.w400),
      icon: const Icon(Icons.expand_more),
      value: value,
      underline: Container(
        height: 1,
        color: AppColors.gray_300,
      ),
      items: data.map((e) {
        return DropdownMenuItem(
          value: e,
          child: Text(e),
        );
      }).toList(),
      onChanged: (value) {
        if (value != null) {
          onChange(value);
        }
      },
    );
  }
}
