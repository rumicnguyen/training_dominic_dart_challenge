import 'package:flutter/material.dart';
import 'package:gallery_app/src/features/typography/widget/rich_text_1.dart';
import 'package:gallery_app/src/features/typography/widget/rich_text_2.dart';
import 'package:gallery_app/src/features/typography/widget/rich_text_3.dart';
import 'package:gallery_app/src/features/typography/widget/rich_text_4.dart';

class TypographyView extends StatelessWidget {
  const TypographyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rich Text View'),
        backgroundColor: const Color(0xFF2196F3),
        titleTextStyle: const TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        iconTheme: const IconThemeData(
          color: Colors.white, // Màu sắc của dấu trả về
        ),
      ),
      body: const Center(
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
