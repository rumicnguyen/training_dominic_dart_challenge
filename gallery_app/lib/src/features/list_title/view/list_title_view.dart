import 'package:flutter/material.dart';
import 'package:gallery_app/src/theme/colors.dart';

const String IMGURL = 'assets/images/app_bar.jpg';

class ListTitleView extends StatefulWidget {
  const ListTitleView({super.key});

  @override
  State<ListTitleView> createState() => _ListTitleViewState();
}

class _ListTitleViewState extends State<ListTitleView> {

  @override
  Widget build(BuildContext context) {
    Color myColor = AppColors.slate_50;
    return SafeArea(
      child: Material(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
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
              stretch: true,
              stretchTriggerOffset: 5.0,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  'Title App bar',
                  style: TextStyle(
                      color: myColor,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
                stretchModes: const [StretchMode.zoomBackground],
                background: Image.asset(
                  IMGURL,
                  width: double.maxFinite,
                  fit: BoxFit.cover,
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
