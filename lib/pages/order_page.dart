import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu, size: size.width * 0.08),
        title: Text('MY ORDERS', style: TextStyle(fontSize: size.width * 0.05)),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Color(0xff381764),
      body: SafeArea(
        child: Container(
          width: size.width,
          height: size.height,
          child: Column(
            children: [
              //Background(),
              Botones(),
              ListCards()
            ],
          ),
        ),
      ),
    );
  }
}

class Botones extends StatefulWidget {
  @override
  _BotonesState createState() => _BotonesState();
}

class _BotonesState extends State<Botones> {
  int seleccion = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: size.width * 0.3,
            height: size.height * 0.06,
            child: TextButton(
              onPressed: () {
                setState(() {
                  seleccion = 0;
                });
              },
              child: Text(
                'New (4)',
                style: TextStyle(
                    color: (seleccion == 0) ? Colors.deepPurple : Colors.white, fontWeight: FontWeight.bold, fontSize: size.width * 0.037),
              ),
              style: ButtonStyle(
                side: MaterialStateProperty.all(
                  BorderSide(
                    width: size.width * 0.005,
                    color: Colors.white,
                  ),
                ),
                elevation: MaterialStateProperty.all(0),
                backgroundColor: MaterialStateProperty.all((seleccion == 0) ? Colors.yellow : Colors.transparent),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: size.width * 0.3,
            height: size.height * 0.06,
            child: TextButton(
              onPressed: () {
                setState(() {
                  seleccion = 1;
                });
              },
              child: Text(
                'In Process (5)',
                style: TextStyle(
                    color: (seleccion == 1) ? Colors.deepPurple : Colors.white, fontWeight: FontWeight.bold, fontSize: size.width * 0.037),
              ),
              style: ButtonStyle(
                side: MaterialStateProperty.all(
                  BorderSide(
                    width: size.width * 0.005,
                    color: Colors.white,
                  ),
                ),
                elevation: MaterialStateProperty.all(0),
                backgroundColor: MaterialStateProperty.all((seleccion == 1) ? Colors.yellow : Colors.transparent),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: size.width * 0.3,
            height: size.height * 0.06,
            child: TextButton(
              onPressed: () {
                setState(() {
                  seleccion = 2;
                });
              },
              child: Text(
                'Delivered',
                style: TextStyle(
                    color: (seleccion == 2) ? Colors.deepPurple : Colors.white, fontWeight: FontWeight.bold, fontSize: size.width * 0.037),
              ),
              style: ButtonStyle(
                side: MaterialStateProperty.all(
                  BorderSide(
                    width: size.width * 0.005,
                    color: Colors.white,
                  ),
                ),
                elevation: MaterialStateProperty.all(0),
                backgroundColor: MaterialStateProperty.all((seleccion == 2) ? Colors.yellow : Colors.transparent),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ListCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Cards();
          },
        ),
      ),
    );
  }
}

class Cards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        width: size.width,
        height: size.height * 0.18,
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              width: size.width,
              height: size.height * 0.15,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.2),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              width: size.width,
              height: size.height * 0.1,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            Positioned(
              top: size.height * 0.015,
              left: size.width * 0.05,
              child: Container(
                width: size.width * 0.15,
                height: size.height * 0.075,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.015,
              left: size.width * 0.22,
              child: Text(
                'Samantha Smith',
                style: TextStyle(fontSize: size.width * 0.046, fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              top: size.height * 0.048,
              left: size.width * 0.22,
              child: _Orden(),
            ),
            Positioned(
              top: size.height * 0.105,
              left: size.width * 0.05,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: size.width * 0.6,
                    child: Text(
                      'Margherita Pizza (1), Crust Gourmet Pizza',
                      style: TextStyle(color: Colors.white, fontSize: size.width * 0.03),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(width: size.width * 0.1),
                  Container(
                    width: size.width * 0.22,
                    height: size.width * 0.07,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          'View Order',
                          style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold, fontSize: size.width * 0.05),
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.yellow),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}

class _Orden extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: size.width * 0.75,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: size.width * 0.41,
                child: Text(
                  'Order: CCQERSSD',
                  style: TextStyle(color: Colors.grey, fontSize: size.width * 0.03),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Container(
                width: size.width * 0.28,
                child: Text(
                  '\$ 25.50',
                  style: TextStyle(color: Colors.grey, fontSize: size.width * 0.03),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
        Container(
          width: size.width * 0.75,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: size.width * 0.41,
                child: Text(
                  'Ordered on 24 Jun | 11.40 am',
                  style: TextStyle(color: Colors.grey, fontSize: size.width * 0.03),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Container(
                width: size.width * 0.28,
                child: Text(
                  'Paid via Credit Card',
                  style: TextStyle(color: Colors.grey, fontSize: size.width * 0.03),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
