import 'package:flutter/cupertino.dart';
import 'package:gallery_app/src/features/cupertino/widget/title.dart';
import 'package:gallery_app/src/theme/colors.dart';
import 'package:gallery_app/src/widgets/section.dart';

class MySwitch extends StatefulWidget {
  const MySwitch({super.key});

  @override
  State<MySwitch> createState() => _MySwitchState();
}

class _MySwitchState extends State<MySwitch> {
  bool value1 = false;
  bool value2 = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: XSection(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MyTitle(title: 'Switch'),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CupertinoSwitch(
                    value: value1,
                    activeColor: AppColors.blue_500,
                    onChanged: (bool? value) {
                      setState(() {
                        value1 = value ?? false;
                      });
                    },
                  ),
                  CupertinoSwitch(
                    value: value2,
                    activeColor: AppColors.blue_500,
                    onChanged: (bool? value) {
                      setState(() {
                        value2 = value ?? false;
                      });
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
