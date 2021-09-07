import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  final String? titulo;
  final Color? color;
  final IconData? icono;
  final String? ruta;
  final bool centerText;

  const CustomNavBar({this.titulo, this.color, this.icono, this.ruta, this.centerText = false});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.06,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, this.ruta ?? '');
              },
              child: Container(padding: EdgeInsets.only(left: 10), child: Icon(Icons.menu, size: 30, color: this.color ?? Colors.white))),
          Spacer(),
          Text(this.titulo ?? '',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: this.color ?? Colors.white), textAlign: TextAlign.center),
          (this.centerText) ? Spacer() : SizedBox(),
          Icon(this.icono ?? null, color: Colors.yellow, size: 30),
          SizedBox(width: 10)
        ],
      ),
    );
  }
}
