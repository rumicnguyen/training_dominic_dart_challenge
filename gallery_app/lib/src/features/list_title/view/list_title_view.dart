import 'package:flutter/material.dart';
import 'package:gallery_app/src/theme/colors.dart';

const String IMGURL = 'assets/images/app_bar.jpg';

class ListTitleView extends StatelessWidget {
  const ListTitleView({super.key});

  @override
  Widget build(BuildContext context) {
    Color myColor = AppColors.red_500;
    return SafeArea(
      child: Material(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              iconTheme: IconThemeData(
                color: myColor,
              ),
              pinned: true,
              snap: false,
              floating: true,
              backgroundColor: AppColors.blue_500,
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  'Title App bar',
                  style: TextStyle(
                      color: myColor,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
                background: Image.asset(
                  IMGURL,
                  width: double.maxFinite,
                  fit: BoxFit.fill,
                ),
              ),
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
