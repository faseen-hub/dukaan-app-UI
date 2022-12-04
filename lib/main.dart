import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui_design/screens/home/Home_Screen.dart';
import 'package:ui_design/screens/splash_screen.dart';

void main() {
  runApp(UIDesign());
}

class UIDesign extends StatelessWidget {
  const UIDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splashScreen(),
    );
  }
}
