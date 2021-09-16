import 'package:flutter/material.dart';

class BotonSesion extends StatelessWidget {
  final String titulo;

  const BotonSesion({this.titulo = 'Inicio'});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(5),
      width: size.width * 0.85,
      height: size.height * 0.09,
      decoration: BoxDecoration(color: Colors.yellow, borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Text(
          titulo,
          style: TextStyle(color: Color(0xff40206D), fontSize: size.width * 0.05, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
