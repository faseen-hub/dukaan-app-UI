import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Catalogue extends StatelessWidget {
  const Catalogue({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            proANcat(),
            space(10.0),
            boxes('Bon Organic | Men...     ', 'assets/images/tshirt1.jpg'),
            space(10.0),
            boxes('Mug| Explore                   ', 'assets/images/cup1.jpg'),
            space(10.0),
            boxes('Combo Blahst 1|Pack...', 'assets/images/tshirt1.jpg'),
            space(10.0),
            boxes(
                'Couch Potato | Men...    ', 'assets/images/butwhytshirt.jpg'),
            space(10.0),
            boxes('Mug | Orchard                  ', 'assets/images/cup1.jpg')
          ],
        ),
      ),
    );
  }

  Widget proANcat() {
    return Container(
      color: Colors.blue,
      width: double.infinity,
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: const [
          Text(
            'Products',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text('Categories',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20))
        ],
      ),
    );
  }

  Widget boxes(title, image) {
    return ConstrainedBox(
      constraints: BoxConstraints.expand(height: 150, width: 350),
      child: Card(
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                productImage(image),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          title,
                          style: TextStyle(fontSize: 20),
                        ),
                        Icon(Icons.more_vert)
                      ],
                    ),
                    Text('1 piece'),
                    Text('799'),
                    Row(
                      children: [
                        Text('In stock'),
                        Switch(value: true, onChanged: (value) {})
                      ],
                    )
                  ],
                )
              ],
            ),
            Container(
              width: double.infinity,
              height: 1.0,
              color: Colors.grey,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.share),
                Text('Share Product'),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget space(size) {
    return SizedBox(
      height: size,
    );
  }

  Widget productImage(image) {
    return SizedBox(
      height: 100,
      width: 100,
      child: Card(child: Image.asset(image)),
    );
  }
}
