import 'package:flutter/material.dart';
import 'package:gallery_app/src/features/row_column/widget/container.dart';
import 'package:gallery_app/src/features/row_column/widget/footer.dart';
import 'package:gallery_app/src/theme/colors.dart';

class RowColumnView extends StatelessWidget {
  const RowColumnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row & Column'),
        backgroundColor: AppColors.blue_700,
        titleTextStyle: const TextStyle(
            color: AppColors.slate_50,
            fontSize: 20,
            fontWeight: FontWeight.bold),
        iconTheme: const IconThemeData(
          color: AppColors.slate_50,
        ),
      ),
      body: Container(
        color: AppColors.gray_200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: AppColors.yellow_300,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  XContainer(
                    fontSize: 35,
                    colors: AppColors.slate_900,
                    size: 50,
                    textColor: AppColors.yellow_300,
                  ),
                  XContainer(
                    fontSize: 50,
                    colors: AppColors.slate_900,
                    size: 75,
                    textColor: AppColors.yellow_300,
                  ),
                  XContainer(
                    fontSize: 35,
                    colors: AppColors.slate_900,
                    size: 50,
                    textColor: AppColors.yellow_300,
                  ),
                ],
              ),
            ),
            const Footer()
          ],
        ),
      ),
    );
  }
}
