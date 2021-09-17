import 'package:animate_do/animate_do.dart';
import 'package:app_delivery/pages/home_page.dart';
import 'package:flutter/material.dart';

class OrderInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('ORDER CCC00023', style: TextStyle(fontSize: size.width * 0.05)),
        backgroundColor: Color(0xff381764),
        elevation: 0,
        leading: Icon(Icons.chevron_left, color: Colors.white, size: size.width * 0.08),
      ),
      backgroundColor: Color(0xff381764),
      body: Container(
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              _ImagenTexto(),
              SizedBox(height: size.height * 0.01),
              _Ticket(),
              Restaurantes(),
            ],
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
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Table(
              defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
              children: [
                TableRow(children: [
                  Text(
                    'Your Order Number',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: size.width * 0.05, color: Colors.grey),
                  ),
                  Text(
                    'CCDF145412',
                    textAlign: TextAlign.end,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: size.width * 0.05),
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
                      style: TextStyle(fontSize: size.width * 0.05, color: Colors.grey),
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
                  width: size.width * 0.6,
                  child: Text(
                    'Esse Lorem aliquip non eu sint enim aliqua dolore est laboris eu exercitation velit.',
                    style: TextStyle(fontSize: size.width * 0.035, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.01),
            Table(
              defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
              children: [
                TableRow(children: [
                  Text(
                    'Total Amount',
                    style: TextStyle(fontSize: size.width * 0.045),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    '\$ 25.50',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: size.width * 0.045),
                    textAlign: TextAlign.end,
                  ),
                ]),
                TableRow(children: [
                  Text(
                    'Amount Pay Via',
                    style: TextStyle(fontSize: size.width * 0.045),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    'PayU Money',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: size.width * 0.045),
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

class _ImagenTexto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        FadeInRight(
          duration: Duration(milliseconds: 500),
          child: Image(
            image: AssetImage('assets/fondo/delivery.png'),
          ),
        ),
        FadeIn(
          delay: Duration(milliseconds: 500),
          child: Text(
            'On the Way',
            style: TextStyle(color: Colors.white, fontSize: size.width * 0.1, fontWeight: FontWeight.bold),
          ),
        ),
        FadeIn(
          delay: Duration(milliseconds: 500),
          child: Text(
            'Status Updated 11:56 P.M.',
            style: TextStyle(color: Colors.white, fontSize: size.width * 0.05),
          ),
        )
      ],
    );
  }
}
