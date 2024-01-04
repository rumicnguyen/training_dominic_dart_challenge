import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/src/features/wrap_chip/logic/wrap_chip_bloc.dart';
import 'package:gallery_app/src/features/wrap_chip/logic/wrap_chip_state.dart';
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
    return BlocBuilder<WrapChipBloc, WrapChipState>(
        buildWhen: (previous, current) =>
            previous.isDeleteIcon != current.isDeleteIcon,
        builder: (context, state) {
          return state.isDeleteIcon
              ? _buildWithDeleted()
              : _buildWithoutDeleted();
        });
  }

  Widget _buildWithDeleted() {
    return BlocBuilder<WrapChipBloc, WrapChipState>(
        buildWhen: (previous, current) => previous.isChanged(current),
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const XTitle(
                title: 'Input Chip',
              ),
              const SizedBox(height: 10.0),
              Wrap(
                
                spacing: state.isSpacing ? 10.0 : 0,
                runSpacing: state.isRunSpacing ? 10.0 : 0,
                children: List<Widget>.generate(
                  list.length,
                  (int index) {
                    return BlocBuilder<WrapChipBloc, WrapChipState>(
                        buildWhen: (previous, current) =>
                            previous.isChanged(current),
                        builder: (context, state) {
                          return InputChip(
                            elevation: state.isElevation ? 10 : 0,
                            avatar:
                                state.isAvatar ? const Icon(Icons.abc) : null,
                            deleteIconColor: _isDisable(index)
                                ? AppColors.slate_400
                                : AppColors.slate_900,
                            labelStyle: TextStyle(
                                color: _isDisable(index)
                                    ? AppColors.slate_400
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
                            selectedColor: AppColors.gray_300,
                            onSelected: (bool selected) {
                              setState(() {
                                if (listDisable.contains(index) == false &&
                                    selected) {
                                  _value = index;
                                }
                              });
                            },
                            onDeleted: () {
                              setState(() {
                                list.removeAt(index);
                              });
                            },
                          );
                        });
                  },
                ).toList(),
              ),
            ],
          );
        });
  }

  Widget _buildWithoutDeleted() {
    return BlocBuilder<WrapChipBloc, WrapChipState>(
        buildWhen: (previous, current) => previous.isChanged(current),
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const XTitle(
                title: 'Input Chip',
              ),
              const SizedBox(height: 10.0),
              Wrap(
                spacing: state.isSpacing ? 10.0 : 0,
                runSpacing: state.isRunSpacing ? 10.0 : 0,
                children: List<Widget>.generate(
                  list.length,
                  (int index) {
                    return BlocBuilder<WrapChipBloc, WrapChipState>(
                        buildWhen: (previous, current) =>
                            previous.isChanged(current),
                        builder: (context, state) {
                          return InputChip(
                            elevation: state.isElevation ? 10 : 0,
                            avatar:
                                state.isAvatar ? const Icon(Icons.abc) : null,
                            deleteIconColor: _isDisable(index)
                                ? AppColors.slate_400
                                : AppColors.slate_900,
                            labelStyle: TextStyle(
                                color: _isDisable(index)
                                    ? AppColors.slate_400
                                    : AppColors.slate_900,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30.0))),
                            side: BorderSide.none,
                            padding: const EdgeInsets.all(5.0),
                            backgroundColor: AppColors.gray_300,
                            label: Text(list.elementAt(index)),
                            selected: _value == index &&
                                listDisable.contains(index) == false,
                            selectedColor: AppColors.gray_300,
                            onSelected: (bool selected) {
                              setState(() {
                                if (listDisable.contains(index) == false &&
                                    selected) {
                                  _value = index;
                                }
                              });
                            },
                          );
                        });
                  },
                ).toList(),
              ),
            ],
          );
        });
  }
}
