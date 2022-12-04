import 'package:flutter/material.dart';

class Premium extends StatelessWidget {
  const Premium({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dukaan Premium'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [dukaanBox(), features(), space(20.0), margin()],
      )),
    );
  }

  Widget margin() {
    return Container(
      width: double.infinity,
      color: Colors.grey,
      height: 1,
    );
  }

  Widget space(height) {
    return SizedBox(
      height: height,
    );
  }

  Widget logo() {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 28,
              child: CircleAvatar(
                radius: 16,
                child: CircleAvatar(
                    radius: 25.0,
                    child: Image.asset(
                      'assets/images/dukaan.png',
                    )),
              ),
            ),
            Column(
              children: [
                Row(
                  children: const [
                    Text(
                      'dukaan',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    const Text('®'),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    'PREMIUM',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  ),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget features() {
    return Container(
      child: Column(
        children: [
          Row(
            children: const [
              Text(
                'Features',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              //Listfeatures()
            ],
          ),
          Listfeatures(
              'Custom domain name',
              'Get your own custom domain and build\nyour brand on the internet.',
              Icons.circle),
          Listfeatures(
              'Verified seller badge',
              'Get green verified badge under your store name and build trust',
              Icons.verified),
          Listfeatures(
              'Dukaan for PC',
              'Access all the exclusive premium\nfeatures on Dukaan for PC',
              Icons.computer),
          Listfeatures(
              'Priority support',
              'Get your questions resolved with our\npriority customer support',
              Icons.headset_mic),
        ],
      ),
    );
  }

  Widget dukaanBox() {
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
              child: Container(
            height: 120,
            width: double.infinity,
            color: Colors.blue,
          )),
          Positioned(
              top: 15,
              left: 20,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(blurRadius: 1)],
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                height: 210,
                width: 350,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 70,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            logo(),
                          ],
                        ),
                      ),
                    ),
                    const Text(
                      'Get Dukaan Premium for just\n4,999/year',
                      style: TextStyle(fontSize: 25),
                    ),
                    Text('All the advanced features for scaling your\nbusiness')
                  ],
                ),
              ))
        ],
      ),
    );
  }

  Widget Listfeatures(title, subtitle, icons) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
      ),
      subtitle: Text(subtitle,
          style: TextStyle(
            fontSize: 16,
          )),
      leading: CircleAvatar(
        backgroundColor: Colors.blue,
        radius: 25,
        child: CircleAvatar(
          radius: 22,
          backgroundColor: Colors.white,
          child: Icon(icons),
        ),
      ),
    );
  }
}
