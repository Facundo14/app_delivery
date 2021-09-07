import 'package:flutter/material.dart';

class BoxSimple extends StatelessWidget {
  final String imagen;
  final String titulo;
  final String subtitulo;

  const BoxSimple({required this.imagen, required this.titulo, required this.subtitulo});
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9,
      height: size.height * 0.075,
      child: _BoxImagen(
        imagen: this.imagen,
        titulo: this.titulo,
        subtitulo: this.subtitulo,
      ),
    );
  }
}

class _BoxImagen extends StatelessWidget {
  final String imagen;
  final String titulo;
  final String subtitulo;

  const _BoxImagen({required this.imagen, required this.titulo, required this.subtitulo});
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          top: size.height * 0.006,
          left: size.height * 0.03,
          child: Container(
            width: size.width * 0.12,
            height: size.height * 0.06,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.5),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Image(
              image: AssetImage(this.imagen),
              fit: BoxFit.contain,
            ),
          ),
        ),
        Positioned(
          top: size.height * 0.003,
          left: size.height * 0.1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                this.titulo,
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
              Container(
                width: size.width * 0.59,
                height: size.height * 0.035,
                child: Text(
                  this.subtitulo,
                  style: TextStyle(fontSize: 13),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
