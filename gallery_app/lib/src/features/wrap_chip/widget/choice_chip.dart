import 'package:flutter/material.dart';
import 'package:gallery_app/src/theme/colors.dart';

class XChoiceChip extends StatefulWidget {
  const XChoiceChip({super.key});

  @override
  State<XChoiceChip> createState() => _XChoiceChipState();
}

class _XChoiceChipState extends State<XChoiceChip> {
  var list = <String>['Disable', 'Small', 'Large'];
  var listDisable = <int>[0];
  int? _value = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          'Choose Chip',
          style: TextStyle(
              color: AppColors.slate_950,
              fontSize: 20,
              fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 10.0),
        Wrap(
          spacing: 5.0,
          children: List<Widget>.generate(
            list.length,
            (int index) {
              return ChoiceChip(
                showCheckmark: false,
                labelStyle: const TextStyle(
                    color:
                        // if(listDisable.contains(index)){
                        //   return AppColors.slate_400
                        // } else if(_value == index)
                        //     ?
                        //     :
                        AppColors.slate_950,
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
                selectedColor: AppColors.sky_300,
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
