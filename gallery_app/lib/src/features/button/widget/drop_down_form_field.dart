import 'package:flutter/material.dart';

class XDropDownFormField extends StatefulWidget {
  const XDropDownFormField({super.key});

  @override
  State<XDropDownFormField> createState() => _XDropDownFormFieldState();
}

class _XDropDownFormFieldState extends State<XDropDownFormField> {
  String value = 'Dropdown form field';
  var data = <String>[
    'Dropdown form field',
    'item1',
    'item2',
    'item3',
    'item4'
  ];
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      hint: const Text('Form Field'),
      value: value,
      onChanged: (String? newValue) {
        setState(() {
          value = newValue!;
        });
      },
      items: data.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
