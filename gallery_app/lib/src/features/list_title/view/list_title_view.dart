import 'package:flutter/material.dart';
import 'package:gallery_app/src/theme/colors.dart';

const String IMG_URL = 'assets/images/card_bg.jpg';

class ListTitleView extends StatelessWidget {
  const ListTitleView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Sample2();
  }
}

class Sample2 extends StatelessWidget {
  const Sample2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              delegate: MyAppBar(expandedHeight: 200),
              pinned: true,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (_, index) => ListTile(
                  title: Text("Index: $index"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyAppBar extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  MyAppBar({required this.expandedHeight});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          IMG_URL,
          fit: BoxFit.cover,
        ),
        Center(
          child: Opacity(
            opacity: shrinkOffset / expandedHeight,
            child: SizedBox(
              height: 200,
              child: Column(
                children: [
                  const Text(
                    "Super Lucky Mr.Fortune Teller",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 23,
                    ),
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Container(
                            color: AppColors.slate_300,
                            width: 100,
                            height: 50,
                            child: const Center(
                              child: Text('data'),
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: expandedHeight / 2 - shrinkOffset,
          left: MediaQuery.of(context).size.width / 4,
          child: Opacity(
            opacity: (1 - shrinkOffset / expandedHeight),
            child: Card(
              elevation: 10,
              child: SizedBox(
                height: expandedHeight,
                width: MediaQuery.of(context).size.width / 2,
                child: const FlutterLogo(),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
