import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gallery_app/src/features/cupertino/widget/circular_progress.dart';
import 'package:gallery_app/src/features/cupertino/widget/slider.dart';
import 'package:gallery_app/src/features/cupertino/widget/switch.dart';
import 'package:gallery_app/src/theme/colors.dart';

class CupertinoView extends StatelessWidget {
  const CupertinoView({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Widget'),
            BottomNavigationBarItem(
                icon: Icon(Icons.rectangle_outlined), label: 'Modal'),
            BottomNavigationBarItem(
                icon: Icon(Icons.description_outlined), label: 'From'),
          ],
          activeColor: AppColors.blue_400,
        ),
        tabBuilder: (context, i) {
          return CupertinoPageScaffold(
            child: Scaffold(
              body: SafeArea(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        child: Column(
                          children: [
                            const Text(
                              'Widget',
                              style: TextStyle(
                                  color: AppColors.slate_900,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600),
                            ),
                            Container(
                              height: 1,
                              width: double.infinity,
                              color: AppColors.gray_300,
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        'Pull to refesh',
                        style: TextStyle(
                            color: AppColors.slate_900,
                            fontSize: 24,
                            fontWeight: FontWeight.w400),
                      ),
                      const XCircularProgress(),
                      _buildButton(),
                      const XSlider(),
                      const MySwitch()
                    ]),
              ),
            ),
          );
        });
  }

  Widget _buildButton() {
    return const SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Button',
              style: TextStyle(
                  color: AppColors.slate_900,
                  fontSize: 22,
                  fontWeight: FontWeight.w500),
            ),
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
