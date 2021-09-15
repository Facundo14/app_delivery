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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                'PROCEDD TO CHECKOUT',
                style: TextStyle(color: Colors.purple.shade900, fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Icon(
              Icons.chevron_right,
              size: 40,
              color: Colors.purple.shade900,
            )
          ],
        ),
      ),
    );
  }
}
