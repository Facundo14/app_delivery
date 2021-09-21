import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        width: size.width,
        height: size.height,
        color: Color(0xff4E17),
        child: CustomPaint(
          painter: _FondoPainter(),
        ),
      ),
    );
  }
}

class _FondoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;
    paint_0.shader = ui.Gradient.linear(Offset(size.width * 0.00, size.height * 0.47), Offset(size.width * 1.00, size.height * 0.47),
        [Color(0xff381764), Color(0xff4E1791)], [0.00, 1.00]);

    Path path_0 = Path();
    path_0.moveTo(size.width, size.height * 0.0008399);
    path_0.quadraticBezierTo(size.width * 0.4078715, size.height * 0.2381178, size.width * 0.2829896, size.height * 0.3531465);
    path_0.quadraticBezierTo(size.width * 0.1634549, size.height * 0.5682235, size.width * 0.0010451, size.height * 0.9310476);
    path_0.lineTo(size.width, size.height * 0.0008399);
    path_0.close();

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
