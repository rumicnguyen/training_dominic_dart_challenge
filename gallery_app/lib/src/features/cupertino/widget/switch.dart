import 'package:flutter/material.dart';
import 'package:gallery_app/src/theme/colors.dart';

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
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Switch',
              style: TextStyle(
                  color: AppColors.slate_900,
                  fontSize: 22,
                  fontWeight: FontWeight.w500),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Switch(
                    value: value1,
                    activeColor: AppColors.blue_500,
                    onChanged: (value) {
                      setState(() {
                        value1 = value;
                      });
                    },
                  ),
                  Switch(
                    value: value2,
                    activeColor: AppColors.blue_500,
                    onChanged: (value) {
                      setState(() {
                        value2 = value;
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
