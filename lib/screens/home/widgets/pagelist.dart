import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../Catalogue.dart';
import '../../Manage/Manage_screen.dart';
import '../../account/Additional_info/additional_info.dart';
import '../../payments.dart';
import '../../premium.dart';

class ListHome extends StatefulWidget {
  const ListHome({super.key});

  @override
  State<ListHome> createState() => _ListHomeState();
}

class _ListHomeState extends State<ListHome> {
  @override
  Widget build(BuildContext context) {
    final _pages = [
      AddInfo(),
      Catalogue(),
      ManageScreen(),
      Payment(),
      Premium()
    ];
    final _pagename = [
      'Order',
      'Manage screen',
      'Payment',
      'Premium',
      'Catalogue'
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              _pagename[index],
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => _pages[index]));
            },
            trailing: Icon(Icons.arrow_circle_right),
          );
        },
        itemCount: _pages.length,
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            thickness: 2.0,
          );
        },
      ),
    );
  }
}
