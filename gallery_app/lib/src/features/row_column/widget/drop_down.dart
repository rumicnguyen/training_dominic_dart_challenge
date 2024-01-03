import 'package:flutter/material.dart';

enum ItemLabel {
  max('max', 'max'),
  min('min', 'min');

  const ItemLabel(this.label, this.item);
  final String label;
  final String item;
}

class XDropDown extends StatefulWidget {
  const XDropDown({super.key});

  @override
  State<XDropDown> createState() => _XDropDownState();
}

class _XDropDownState extends State<XDropDown> {
  final TextEditingController itemController = TextEditingController();
  ItemLabel? selectedItem;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Text('mainAxisSize'),
        DropdownMenu<ItemLabel>(
          initialSelection: ItemLabel.max,
          controller: itemController,
          enableFilter: true,
          requestFocusOnTap: true,
          inputDecorationTheme: const InputDecorationTheme(
            contentPadding: EdgeInsets.symmetric(vertical: 5.0),
          ),
          onSelected: (ItemLabel? item) {
            setState(() {
              selectedItem = item;
            });
          },
          dropdownMenuEntries:
              ItemLabel.values.map<DropdownMenuEntry<ItemLabel>>(
            (ItemLabel item) {
              return DropdownMenuEntry<ItemLabel>(
                  value: item,
                  label: item.label,
                  enabled: item.label != selectedItem?.label);
            },
          ).toList(),
        ),
      ],
    );
  }
}
