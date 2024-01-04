import 'package:flutter/material.dart';
import 'package:gallery_app/src/features/wrap_chip/widget/title.dart';
import 'package:gallery_app/src/theme/colors.dart';

class XInputChip extends StatefulWidget {
  const XInputChip({super.key});

  @override
  State<XInputChip> createState() => _XInputChipState();
}

class _XInputChipState extends State<XInputChip> {
  var list = <String>['Disable', 'iOS', 'Android'];
  var listDisable = <int>[0];
  int? _value = 1;

  bool _isDisable(int value) => listDisable.contains(value);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const XTitle(
          title: 'Input Chip',
        ),
        const SizedBox(height: 10.0),
        Wrap(
          spacing: 5.0,
          children: List<Widget>.generate(
            list.length,
            (int index) {
              return InputChip(
                
                deleteIcon: const Icon(Icons.delete),
                avatarBorder: const StadiumBorder(),
                labelStyle: TextStyle(
                    color: _isDisable(index)
                        ? AppColors.slate_400
                        : AppColors.slate_900,
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0))),
                side: BorderSide.none,
                padding: const EdgeInsets.all(5.0),
                backgroundColor: AppColors.gray_300,
                label: Text(list.elementAt(index)),
                selected:
                    _value == index && listDisable.contains(index) == false,
                selectedColor: AppColors.gray_300,
                onSelected: (bool selected) {
                  setState(() {
                    if (listDisable.contains(index) == false && selected) {
                      _value = index;
                    }
                  });
                },
              );
            },
          ).toList(),
        ),
      ],
    );
  }
}
