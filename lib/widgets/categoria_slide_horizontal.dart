import 'package:flutter/material.dart';

class CategoriasSlider extends StatefulWidget {
  final String img;
  final String titulo;

  const CategoriasSlider({required this.img, required this.titulo});
  @override
  _CategoriasSliderState createState() => _CategoriasSliderState();
}

class _CategoriasSliderState extends State<CategoriasSlider> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.2,
      child: RotatedBox(
        quarterTurns: 3,
        child: new ListWheelScrollView(
          itemExtent: 100,
          onSelectedItemChanged: (x) {
            setState(() {
              selected = x;
            });
          },
          physics: BouncingScrollPhysics(),
          children: List<Widget>.generate(
            5,
            (index) => Container(
              height: size.height * 0.3,
              width: size.width * 0.4,
              child: RotatedBox(
                quarterTurns: 1,
                child: Column(
                  children: [
                    Container(
                      width: size.width * 0.228,
                      height: size.height * 0.15,
                      child: Image(
                        image: AssetImage('img'),
                        fit: BoxFit.contain,
                      ),
                    ),
                    Text(
                      'Chinase Food',
                      style: (index == selected)
                          ? TextStyle(fontWeight: FontWeight.bold, color: Colors.yellow)
                          : TextStyle(color: Colors.white30),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
