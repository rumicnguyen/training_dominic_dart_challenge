import 'package:flutter/material.dart';
import 'package:gallery_app/src/theme/colors.dart';
import 'package:gallery_app/src/widgets/section.dart';

class XSlider extends StatefulWidget {
  const XSlider({super.key});

  @override
  State<XSlider> createState() => _XSliderState();
}

class _XSliderState extends State<XSlider> {
  double _currentSliderValue1 = 30;
  double _currentSliderValue2 = 20;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: XSection(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Slider',
              style: TextStyle(
                  color: AppColors.slate_900,
                  fontSize: 22,
                  fontWeight: FontWeight.w500),
            ),
            _buildSlider1(),
            _buildSlider2(),
          ],
        ),
      ),
    );
  }

  Widget _buildSlider1() {
    return Slider(
      value: _currentSliderValue1,
      activeColor: AppColors.blue_500,
      max: 100,
      divisions: 5,
      label: _currentSliderValue1.round().toString(),
      onChanged: (double value) {
        setState(() {
          _currentSliderValue1 = value;
        });
      },
    );
  }

  Widget _buildSlider2() {
    return Slider(
      value: _currentSliderValue2,
      activeColor: AppColors.blue_500,
      max: 100,
      divisions: 5,
      label: _currentSliderValue2.round().toString(),
      onChanged: (double value) {
        setState(() {
          _currentSliderValue2 = value;
        });
      },
    );
  }
}
