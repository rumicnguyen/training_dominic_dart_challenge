import 'package:flutter/material.dart';
import 'package:gallery_app/src/theme/colors.dart';

class ChipChip extends StatelessWidget {
  const ChipChip({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Chip Chip',
            style: TextStyle(
                color: AppColors.slate_950,
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
          Wrap(
            spacing: 8.0,
            runSpacing: 4.0,
            children: <Widget>[
              Chip(
                labelStyle: TextStyle(
                    color: AppColors.slate_950,
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0))),
                side: BorderSide.none,
                padding: EdgeInsets.all(5.0),
                backgroundColor: AppColors.gray_300,
                label: Text('Chip'),
              ),
              Chip(
                labelStyle: TextStyle(
                    color: AppColors.slate_950,
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0))),
                side: BorderSide.none,
                padding: EdgeInsets.all(5.0),
                backgroundColor: AppColors.gray_300,
                label: Text('ActionChip'),
              ),
              Chip(
                labelStyle: TextStyle(
                    color: AppColors.slate_950,
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0))),
                side: BorderSide.none,
                padding: EdgeInsets.all(5.0),
                backgroundColor: AppColors.gray_300,
                label: Text('RawChip'),
              ),
            ],
          ),
        ]);
  }
}
