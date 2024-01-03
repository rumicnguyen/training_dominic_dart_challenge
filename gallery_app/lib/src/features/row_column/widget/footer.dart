import 'package:flutter/material.dart';
import 'package:gallery_app/src/features/row_column/widget/drop_down.dart';
import 'package:gallery_app/src/features/row_column/widget/radio_button.dart';
import 'package:gallery_app/src/theme/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.slate_50,
      child: const Column(
        children: [
          XRadioButton(),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                XDropDown(
                  list: ['max', 'min'],
                  label: 'mainAxisSize',
                ),
                XDropDown(
                  list: ['start', 'end', 'baseline', 'stretch', 'center'],
                  label: 'mainAxisAlignment',
                ),
                XDropDown(
                  list: ['center', 'start', 'end', 'baseline', 'stretch'],
                  label: 'crossAxisAlignment',
                ),
                XDropDown(
                  list: ['down', 'up'],
                  label: 'verticalDirection',
                ),
                XDropDown(
                  list: ['ltr', 'rtl'],
                  label: 'textDirection',
                ),
                XDropDown(
                  list: ['ideographic', 'alphabetic'],
                  label: 'textBaseline',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
