import 'package:flutter/cupertino.dart';

class XSection extends StatelessWidget {
  const XSection({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: child,
    );
  }
}
