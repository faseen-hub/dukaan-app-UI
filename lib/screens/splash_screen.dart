import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui_design/screens/home/Home_Screen.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<splashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    gotoMainScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
          child: Center(
        widthFactor: double.infinity,
        heightFactor: double.infinity,
        child: Column(
          children: [
            Image.asset('assets/images/dukaan.png'),
            Text(
              'DUKAAN',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      )),
    );
  }

  Future<void> gotoMainScreen() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (ctx) => HomeScreen()));
  }
}
