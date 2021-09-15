import 'package:app_delivery/animations/slider-animation.dart';
import 'package:flutter/material.dart';

class OrderListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('MY ORDERS', style: TextStyle(fontSize: 18)),
        backgroundColor: Color(0xff381764),
        elevation: 0,
        leading: Icon(Icons.chevron_left, color: Colors.white, size: 35),
      ),
      backgroundColor: Color(0xff381764),
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(20),
            child: Text(
              'Upcoming Orders',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
          ),
          _ListaOrdenes(),
        ],
      ),
    );
  }
}

class _ListaOrdenes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.75,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return SlideAnimation(
            itemCount: 3,
            position: index,
            duration: Duration(seconds: 1),
            slideDirection: SlideDirection.fromTop,
            child: _ListaPedidos(),
          );
        },
      ),
    );
  }
}

class _ListaPedidos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(10),
      width: size.width,
      height: size.height * 0.15,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: _Pedido(),
    );
  }
}

class _Pedido extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Container(
          margin: EdgeInsets.all(10),
          width: size.width * 0.15,
          height: size.width * 0.15,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: NetworkImage('https://graffica.info/wp-content/uploads/2017/01/Kentucky-Fried-Chicken.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 15,
          right: 90,
          child: Text(
            'Marine Restaurant',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
        ),
        Positioned(
          bottom: 40,
          right: 140,
          child: Text(
            'Order: CCCWS200 (2 items)',
            style: TextStyle(fontSize: 13),
          ),
        ),
        Positioned(
          bottom: 40,
          right: 10,
          child: Text(
            '\$ 25.5',
            style: TextStyle(fontSize: 13),
          ),
        ),
        Positioned(
          bottom: 20,
          right: 146,
          child: Text(
            'Ordered 14 Jun | 11:50 pm',
            style: TextStyle(fontSize: 13),
          ),
        ),
        Positioned(
          bottom: 20,
          right: 10,
          child: Text(
            'Paid via Credit Card',
            style: TextStyle(fontSize: 13),
          ),
        ),
      ],
    );
  }
}
