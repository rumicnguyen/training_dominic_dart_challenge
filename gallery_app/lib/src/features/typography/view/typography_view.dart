import 'package:flutter/material.dart';
import 'package:gallery_app/src/features/typography/widget/rich_text_1.dart';
import 'package:gallery_app/src/features/typography/widget/rich_text_2.dart';
import 'package:gallery_app/src/features/typography/widget/rich_text_3.dart';
import 'package:gallery_app/src/features/typography/widget/rich_text_4.dart';
import 'package:gallery_app/src/widgets/appbar.dart';

class TypographyView extends StatelessWidget {
  const TypographyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: XAppBar(
        title: 'Rich Text View',
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            RichText1(),
            RichText2(),
            RichText3(),
            RichText4(),
          ],
        ),
      ),
    );
  }
}
