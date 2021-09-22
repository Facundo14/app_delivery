import 'package:app_delivery/animations/slider-animation.dart';
import 'package:flutter/material.dart';

class OrderListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('MY ORDERS', style: TextStyle(fontSize: size.width * 0.05)),
        backgroundColor: Color(0xff381764),
        elevation: 0,
        leading: Icon(Icons.chevron_left,
            color: Colors.white, size: size.width * 0.08),
      ),
      backgroundColor: Color(0xff381764),
      body: Container(
        width: size.width,
        height: size.height,
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Upcoming Orders',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: size.width * 0.05,
                ),
              ),
            ),
            _ListaOrdenes(),
          ],
        ),
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
      children: [
        Positioned(
          top: size.height * 0.03,
          left: size.width * 0.03,
          child: Container(
            width: size.width * 0.15,
            height: size.width * 0.15,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(
                    'https://graffica.info/wp-content/uploads/2017/01/Kentucky-Fried-Chicken.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          top: size.height * 0.015,
          left: size.width * 0.2,
          child: Container(
            width: size.width * 0.65,
            child: Text(
              'Marine Restaurant',
              style: TextStyle(
                  fontSize: size.width * 0.06, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Positioned(
          top: size.height * 0.1,
          left: size.width * 0.2,
          child: Column(
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
                        style: TextStyle(
                            color: Colors.grey, fontSize: size.width * 0.03),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                      width: size.width * 0.28,
                      child: Text(
                        '\$ 25.50',
                        style: TextStyle(
                            color: Colors.grey, fontSize: size.width * 0.03),
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
                  children: [
                    Container(
                      width: size.width * 0.41,
                      child: Text(
                        'Ordered on 24 Jun | 11.40 am',
                        style: TextStyle(
                            color: Colors.grey, fontSize: size.width * 0.03),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                      width: size.width * 0.28,
                      child: Text(
                        'Paid via Credit Card',
                        style: TextStyle(
                            color: Colors.grey, fontSize: size.width * 0.03),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
