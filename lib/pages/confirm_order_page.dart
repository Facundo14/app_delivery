import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class ConfirmOrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff381764),
      body: Container(
        width: size.width,
        height: size.height,
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                _Imagen(),
                _Texto(),
                _Ticket(),
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'orderList');
                    },
                    child: _BotonFinal()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _BotonFinal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(5),
      width: size.width,
      height: size.height * 0.1,
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          'TRACK ORDER',
          style: TextStyle(
            color: Color(0xff381764),
            fontSize: size.width * 0.06,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class _Ticket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(5),
      width: size.width,
      height: size.height * 0.3,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Table(
              defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
              children: [
                TableRow(children: [
                  Text(
                    'Your Order Number',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: size.width * 0.046, color: Colors.grey),
                  ),
                  Text(
                    'CCDF145412',
                    textAlign: TextAlign.end,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: size.width * 0.046),
                  ),
                ]),
                TableRow(
                  children: [
                    SizedBox(height: size.height * 0.01),
                    Container(),
                  ],
                ),
                TableRow(
                  children: [
                    Text(
                      'Delivery address',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: size.width * 0.046, color: Colors.grey),
                    ),
                    Container(),
                  ],
                ),
              ],
            ),
            SizedBox(height: size.height * 0.01),
            Row(
              children: [
                Container(
                  width: size.width * 0.8,
                  height: size.height * 0.1,
                  child: Text(
                    'Esse Lorem aliquip non eu sint enim aliqua dolore est laboris eu exercitation velit.',
                    style: TextStyle(fontSize: size.width * 0.04, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.001),
            Table(
              defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
              children: [
                TableRow(children: [
                  Text(
                    'Total Amount',
                    style: TextStyle(fontSize: size.width * 0.046),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    '\$ 25.50',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: size.width * 0.046),
                    textAlign: TextAlign.end,
                  ),
                ]),
                TableRow(children: [
                  Text(
                    'Amount Pay Via',
                    style: TextStyle(fontSize: size.width * 0.046),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    'PayU Money',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: size.width * 0.046),
                    textAlign: TextAlign.end,
                  ),
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _Texto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FadeIn(
            delay: Duration(milliseconds: 400),
            child: Text(
              'Hey, Samantha',
              style: TextStyle(color: Colors.white, fontSize: size.width * 0.08, fontWeight: FontWeight.bold),
            ),
          ),
          FadeInDown(
            delay: Duration(milliseconds: 600),
            child: Text(
              'Your Order is confirmed!',
              style: TextStyle(color: Colors.white, fontSize: size.width * 0.04),
            ),
          )
        ],
      ),
    );
  }
}

class _Imagen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.4,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/fondo/confirmar.png'), fit: BoxFit.scaleDown),
      ),
    );
  }
}
