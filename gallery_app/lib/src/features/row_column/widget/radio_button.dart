import 'package:flutter/material.dart';

enum RowColumn { row, column }

class XRadioButton extends StatefulWidget {
  const XRadioButton({super.key});

  @override
  State<XRadioButton> createState() => _XRadioButtonState();
}

class _XRadioButtonState extends State<XRadioButton> {
  RowColumn? _row = RowColumn.row;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListTile(
            title: const Text('Row'),
            leading: Radio<RowColumn>(
              value: RowColumn.row,
              groupValue: _row,
              onChanged: (RowColumn? value) {
                setState(() {
                  _row = value;
                });
              },
            ),
          ),
        ),
        Expanded(
          child: ListTile(
            title: const Text('Column'),
            leading: Radio<RowColumn>(
              value: RowColumn.column,
              groupValue: _row,
              onChanged: (RowColumn? value) {
                setState(() {
                  _row = value;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
