import 'package:flutter/material.dart';

import '../Order.dart';

class ManageScreen extends StatelessWidget {
  const ManageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            rowCards('Marketing \nDesigns', 'Online\nPayments', Icons.volume_up,
                Icons.currency_rupee_rounded, Colors.orange, Colors.green),
            rowCards('Discount\nCoupons', 'My\nCustomers', Icons.percent,
                Icons.people, Colors.orangeAccent, Colors.greenAccent),
            rowCards(
                'Store QR\nCode',
                'Extra\nCharges',
                Icons.center_focus_strong,
                Icons.money,
                Colors.grey,
                Colors.purple),
            rowCardsingle('Order\nForm', Icons.list, Colors.pink),
          ],
        ),
      ),
    );
  }

  Widget card(text, icon, color) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ConstrainedBox(
        constraints: const BoxConstraints.expand(height: 130, width: 180),
        child: Card(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 50,
                width: 50,
                child: Card(
                  child: Icon(
                    icon,
                    color: Colors.white,
                  ),
                  color: color,
                ),
              ),
              Text(
                text,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget rowCards(text1, text2, icon1, icon2, color1, color2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [card(text1, icon1, color1), card(text2, icon2, color2)],
    );
  }

  Widget rowCardsingle(text, icon, color) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [card(text, icon, color)],
    );
  }
}
