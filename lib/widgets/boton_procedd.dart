import 'package:flutter/material.dart';

class BotonProceddFinal extends StatelessWidget {
  final String titulo;
  final VoidCallback onPress;

  const BotonProceddFinal({required this.titulo, required this.onPress});
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: size.width,
        height: size.height * 0.1,
        color: Colors.yellow,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              titulo,
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
