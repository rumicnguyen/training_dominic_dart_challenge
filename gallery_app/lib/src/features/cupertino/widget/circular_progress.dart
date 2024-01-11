import 'package:flutter/cupertino.dart';
import 'package:gallery_app/src/features/cupertino/widget/title.dart';
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
    return const SizedBox(
      width: double.infinity,
      child: XSection(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            MyTitle(title: 'Indicator'),
            Center(
              child: CupertinoActivityIndicator(
                  radius: 20.0, color: AppColors.blue_500),
            ),
          ],
        ),
      ),
    );
  }
}
