import 'package:flutter/material.dart';

class XToggleButton extends StatefulWidget {
  const XToggleButton({super.key});

  @override
  State<XToggleButton> createState() => _XToggleButtonState();
}

class _XToggleButtonState extends State<XToggleButton> {
  @override
  Widget build(BuildContext context) {
    var isSelected = <bool>[true, false, false];
    return ToggleButtons(
      isSelected: isSelected,
      onPressed: (int index) {
        setState(() {
          for (int buttonIndex = 0;
              buttonIndex < isSelected.length;
              buttonIndex++) {
            isSelected[buttonIndex] = buttonIndex == index;
          }
        });
      },
      children: <Widget>[
        _buiText(title: 'Option 1'),
        _buiText(title: 'Option 2'),
        _buiText(title: 'Option 3'),
      ],
    );
  }

  Widget _buiText({required String title}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(title),
    );
  }
}
