import 'package:flutter/cupertino.dart';
import 'package:gallery_app/src/features/cupertino/widget/title.dart';
import 'package:gallery_app/src/theme/colors.dart';
import 'package:gallery_app/src/widgets/section.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: XSection(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyTitle(title: 'Button'),
            Center(
              child: Column(
                children: [
                  CupertinoButton(
                      onPressed: null,
                      child: Text(
                        'Button',
                        style:
                            TextStyle(color: AppColors.blue_400, fontSize: 18),
                      )),
                  CupertinoButton(
                      onPressed: null,
                      color: AppColors.blue_400,
                      disabledColor: AppColors.blue_400,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Text(
                        'With background',
                        style:
                            TextStyle(color: AppColors.slate_50, fontSize: 18),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
