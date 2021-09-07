import 'package:app_delivery/widgets/custom_navbar.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff381764),
      body: SafeArea(
        child: Container(
          width: size.width,
          height: size.height,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              //Background(),
              CustomNavBar(
                titulo: 'MY ORDERS',
                centerText: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


