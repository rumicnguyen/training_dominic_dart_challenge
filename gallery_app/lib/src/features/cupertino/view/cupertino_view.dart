import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gallery_app/src/features/cupertino/widget/button.dart';
import 'package:gallery_app/src/features/cupertino/widget/circular_progress.dart';
import 'package:gallery_app/src/features/cupertino/widget/slider.dart';
import 'package:gallery_app/src/features/cupertino/widget/switch.dart';
import 'package:gallery_app/src/theme/colors.dart';

final data = <Widget>[
  const XCircularProgress(),
  const MyButton(),
  const XSlider(),
  const MySwitch()
];

class CupertinoView extends StatefulWidget {
  const CupertinoView({super.key});

  @override
  State<CupertinoView> createState() => _CupertinoViewState();
}

class _CupertinoViewState extends State<CupertinoView> {
  List<Widget> items = List.from(data);

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
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              slivers: [
                CupertinoSliverNavigationBar(
                  largeTitle: const Text('Widget'),
                  leading: Container(),
                ),
                CupertinoSliverRefreshControl(
                  onRefresh: () async {
                    await Future.delayed(const Duration(seconds: 1));

                    setState(() {
                      items.clear();
                    });
                    await Future.delayed(const Duration(seconds: 1));
                    setState(() {
                      items.addAll(List.from(data));
                    });
                  },
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) => items[index],
                    childCount: items.length,
                  ),
                ),
              ],
            ),
          );
        });
  }
}
