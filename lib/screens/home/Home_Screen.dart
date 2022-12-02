import 'package:flutter/material.dart';
import 'package:ui_design/screens/Manage/Manage_screen.dart';
import 'package:ui_design/screens/account/Additional_info/additional_info.dart';
import 'package:ui_design/screens/account/account_screen.dart';
import 'package:ui_design/screens/home/widgets/bottom_navigation.dart';

import '../payments.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);
  final _pages = [
    ManageScreen(),
    AddInfo(),
    AddInfo(),
    Payment(),
    AccountScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const BottomNav(),
        appBar: AppBar(
          title: Center(child: Text('Manage Store')),
        ),
        backgroundColor: (Color.fromARGB(255, 217, 215, 215)),
        body: SafeArea(
            child: ValueListenableBuilder(
          builder: (BuildContext context, int updatedIndex, _) {
            return _pages[updatedIndex];
          },
          valueListenable: selectedIndexNotifier,
        )),
      ),
    );
  }
}
