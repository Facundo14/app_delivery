import 'package:flutter/material.dart';

class BotonFinal extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.1,
      color: Colors.yellow,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '\$11.5 (1 item)',
              style: TextStyle(color: Colors.purple.shade900, fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Spacer(),
          Text(
            'CONFIRM ORDER',
            style: TextStyle(color: Colors.purple.shade900, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Icon(
            Icons.chevron_right,
            size: 40,
            color: Colors.purple.shade900,
          )
        ],
      ),
    );
  }
}
