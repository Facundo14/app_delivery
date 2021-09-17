import 'package:flutter/material.dart';

class BotonProceddFinal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'orderInfo');
      },
      child: Container(
        width: size.width,
        height: size.height * 0.1,
        color: Colors.yellow,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'PROCEDD TO CHECKOUT',
              style: TextStyle(color: Colors.purple.shade900, fontSize: size.width * 0.06, fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.chevron_right,
              size: size.height * 0.06,
              color: Colors.purple.shade900,
            )
          ],
        ),
      ),
    );
  }
}
