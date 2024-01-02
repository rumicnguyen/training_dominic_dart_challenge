import 'package:flutter/material.dart';

class CupertinoView extends StatelessWidget {
  const CupertinoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cupertino')),
      body: const Text('body'),
    );
  }
}
