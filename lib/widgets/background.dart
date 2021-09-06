import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    print(size.width);
    print(size.height);
    return Container(
      width: size.width,
      height: size.height,
      color: Colors.white,
    );
  }
}
