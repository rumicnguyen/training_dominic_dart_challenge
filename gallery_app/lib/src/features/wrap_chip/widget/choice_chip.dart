import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/src/features/wrap_chip/logic/wrap_chip_bloc.dart';
import 'package:gallery_app/src/features/wrap_chip/logic/wrap_chip_state.dart';
import 'package:gallery_app/src/features/wrap_chip/widget/title.dart';
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

  bool _isDisable(int value) => listDisable.contains(value);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WrapChipBloc, WrapChipState>(
        buildWhen: (previous, current) => previous.isChanged(current),
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const XTitle(
                title: 'Choose Chip',
              ),
              const SizedBox(height: 10.0),
              Wrap(
                spacing: state.isSpacing ? 10.0 : 0,
                runSpacing: state.isRunSpacing ? 10.0 : 0,
                children: List<Widget>.generate(
                  list.length,
                  (int index) {
                    return ChoiceChip(
                      elevation: state.isElevation ? 10 : 0,
                      avatar: state.isAvatar ? const Icon(Icons.abc) : null,
                      showCheckmark: false,
                      labelStyle: TextStyle(
                          color: _isDisable(index)
                              ? AppColors.slate_400
                              : _value == index
                                  ? AppColors.sky_500
                                  : AppColors.slate_900,
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                      shape: state.outlinedBorder,
                      side: BorderSide.none,
                      padding: const EdgeInsets.all(5.0),
                      backgroundColor: AppColors.gray_300,
                      label: Text(list.elementAt(index)),
                      selected: _value == index &&
                          listDisable.contains(index) == false,
                      selectedColor: AppColors.sky_200,
                      onSelected: (bool selected) {
                        setState(() {
                          if (listDisable.contains(index) == false &&
                              selected) {
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
        });
  }
}
