import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Order #1688068'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'May 31, 05:42 PM                           ',
                      style: TextStyle(fontSize: 18),
                    ),
                    CircleAvatar(
                      radius: 8,
                      backgroundColor: Colors.blue,
                    ),
                    Text('Delivered',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                // ),
                space(20.0),
                margin(),
                space(20.0),
                // Padding(
                //   padding: const EdgeInsets.all(10.0),
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('1 ITEM',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold)),
                          Row(
                            children: const [
                              Icon(
                                Icons.assignment,
                                color: Colors.blue,
                              ),
                              Text('RECEIPT',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 6, 82, 145),
                                  )),
                            ],
                          ),
                          // fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                  ],
                ),
                // ),
                Row(
                  children: [
                    productImage('assets/images/butwhytshirt.jpg'),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Explore | Men | Navy Blue',
                          style: TextStyle(fontSize: 18),
                        ),
                        const Text(
                          '1 piece',
                          style: TextStyle(fontSize: 15),
                        ),
                        const Text(
                          'Size: XL',
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color.fromARGB(255, 217, 234, 248),
                                      border: Border.all(
                                        color: Colors.blue,
                                      )),
                                  child: const Text(
                                    '1',
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 18,
                                        fontFamily: 'Quicksand'),
                                  ),
                                ),
                                Text(
                                  ' x ₹799',
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  '                         ₹799',
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                space(40.0),
                margin(),
                space(20.0),
                rowdetails(
                    text1: 'Item Total',
                    text2: '₹799',
                    color: Colors.black,
                    size: 18.0,
                    fontweight: FontWeight.normal),
                space(10.0),
                rowdetails(
                    text1: 'Delivery',
                    text2: 'FREE',
                    color: Colors.green,
                    size: 18.0,
                    fontweight: FontWeight.normal),
                space(20.0),
                rowdetails(
                    text1: 'Grand Total',
                    text2: '₹799',
                    color: Colors.black,
                    size: 20.0,
                    fontweight: FontWeight.bold),
                space(20.0),
                margin(),
                space(20.0),
                Customerdetails(),
                space(20.0),
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Deepa',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500)),
                              Text('+91-7829000484',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 104, 100, 100),
                                  ))
                            ],
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.call_rounded,
                                color: Colors.blue,
                              ),
                              Text('    '),
                              Icon(
                                Icons.whatsapp,
                                color: Colors.green,
                              ),
                            ],
                          ),
                          // fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                  ],
                ),
                space(20.0),
                // Expanded(
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          'Address',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        space(5.0),
                        const Text('D 1101 Chartered Beverly',
                            style: TextStyle(fontSize: 18)),
                        const Text('Hills, Subramanyapura P.O',
                            style: TextStyle(fontSize: 18)),
                        space(10.0),
                        Row(
                          children: [
                            Container(
                              width: 160,
                              child: const Text(
                                'City',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              child: const Text(
                                'Pincode',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Text('Banglore                 ',
                                style: TextStyle(
                                  fontSize: 20,
                                )),
                            Text('560061',
                                style: TextStyle(
                                  fontSize: 20,
                                )),
                          ],
                        ),
                        space(8.0),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Payment',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                    'Online                                          \t       ',
                                    style: TextStyle(fontSize: 20)),
                                Container(
                                  alignment: Alignment.center,
                                  height: 20,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color.fromARGB(255, 186, 245, 185),
                                      border: Border.all(
                                        color: Colors.green,
                                      )),
                                  child: const Text(
                                    'PAID',
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Quicksand'),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                // ),
                space(40.0),
                margin(),
                space(20.0),
                AdditionalInfo()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget productImage(image) {
    return SizedBox(
      height: 100,
      width: 100,
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Image.asset(image),
      ),
    );
  }

  Widget margin() {
    return Container(
      width: double.infinity,
      color: Colors.grey,
      height: 1,
    );
  }

  Widget space(size) {
    return SizedBox(
      height: size,
    );
  }

  Widget rowdetails(
      {required text1,
      required text2,
      required color,
      required size,
      required fontweight}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          style: TextStyle(fontSize: size, fontWeight: fontweight),
        ),
        Text(text2,
            style:
                TextStyle(color: color, fontSize: size, fontWeight: fontweight))
      ],
    );
  }

  Widget Customerdetails() {
    return Row(
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('CUSTOMER DETAILS',
                  style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 99, 98, 98),
                      fontWeight: FontWeight.w500)),
              Row(
                children: const [
                  Icon(
                    Icons.share,
                    color: Colors.blue,
                  ),
                  Text('SHARE',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 6, 82, 145),
                      )),
                ],
              ),
              // fontWeight: FontWeight.bold))
            ],
          ),
        ),
      ],
    );
  }

  Widget AdditionalInfo() {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('ADDITIONAL INFORMATION',
                style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 99, 98, 98),
                    fontWeight: FontWeight.w500)),
            // fontWeight: FontWeight.bold))
            space(10.0),
            const Text('State',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w500)),
            const Text('Karnataka',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                )),
            space(10.0),
            const Text('Email',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w500)),
            const Text('greeniceaqua@gmail.com',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                )),
            space(20.0),
            SizedBox(
              width: 370.0,
              height: 40.0,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    side: BorderSide(color: Colors.blue),
                  ),
                  child: Text(
                    'Share receipt',
                    style: TextStyle(color: Colors.blue, fontSize: 15),
                  )),
            )
          ],
        ),
      ],
    );
  }
}
