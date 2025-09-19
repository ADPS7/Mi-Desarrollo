import 'package:flutter/material.dart';

import 'presentation/view/loanding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: Center(child: Image.asset('assets/error.jpg'))),
    );
  }
}
