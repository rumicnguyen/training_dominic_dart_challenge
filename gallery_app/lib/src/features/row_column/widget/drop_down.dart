import 'package:flutter/material.dart';
import 'package:gallery_app/src/theme/colors.dart';

class XDropDown extends StatefulWidget {
  const XDropDown({super.key, required this.list, required this.label});

  final List<String> list;
  final String label;
  @override
  State<XDropDown> createState() => _XDropDownState();
}

class _XDropDownState extends State<XDropDown> {
  TextStyle customStyle() => const TextStyle(
      fontSize: 20, color: AppColors.slate_900, fontWeight: FontWeight.w400);

  @override
  Widget build(BuildContext context) {
    String dropdownValue = widget.list.first;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(widget.label, style: customStyle()),
        DropdownButton<String>(
          style: customStyle(),
          icon: const Icon(Icons.expand_more),
          value: dropdownValue,
          underline: Container(
            height: 1,
            color: AppColors.gray_400,
          ),
          items: widget.list.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? value) {
            setState(() {
              if (value != null) {
                dropdownValue = value;
              } else {
                dropdownValue = widget.list.first;
              }
            });
          },
        ),
      ],
    );
  }
}
