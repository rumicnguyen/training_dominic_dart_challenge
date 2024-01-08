import 'package:flutter/material.dart';
import 'package:gallery_app/src/theme/colors.dart';
import 'package:gallery_app/src/widgets/section.dart';

class XCircularProgress extends StatefulWidget {
  const XCircularProgress({super.key});

  @override
  State<XCircularProgress> createState() => _XCircularProgressState();
}

class _XCircularProgressState extends State<XCircularProgress>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: XSection(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Indicator',
              style: TextStyle(
                  color: AppColors.slate_900,
                  fontSize: 22,
                  fontWeight: FontWeight.w500),
            ),
            Center(
              child: CircularProgressIndicator(
                value: controller.value,
                color: AppColors.blue_500,
                semanticsLabel: 'Circular progress indicator',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
