import 'package:app_delivery/widgets/box_simple.dart';
import 'package:app_delivery/widgets/custom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  static final LatLng _kMapCenter = LatLng(-27.370438, -55.896347);

  static final CameraPosition _kInitialPosition = CameraPosition(target: _kMapCenter, zoom: 15.0, tilt: 0, bearing: 0);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          width: size.width,
          height: size.height,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              GoogleMap(
                initialCameraPosition: _kInitialPosition,
              ),
              Positioned(
                top: 0,
                child: SafeArea(
                  child: CustomNavBar(
                    color: Colors.black,
                    ruta: 'home',
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: _CardDireccion(),
              ),
            ],
          )),
    );
  }
}

class _CardDireccion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(bottom: size.width * 0.04),
      width: size.width * 0.9,
      height: size.height * 0.35,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          _BoxTexto(),
          Positioned(
              top: 55,
              child: Container(
                height: size.width * 0.0008,
                width: size.width,
                color: Colors.grey.shade200,
              )),
          Positioned(
            top: 65,
            child: BoxSimple(
              imagen: 'assets/category/pez.png',
              titulo: 'Marine Rise Restaurant',
              subtitulo: '588 Lazy Diversion, Village Four, Pennsylvania, United State America',
            ),
          ),
          Positioned(
            bottom: 77,
            child: BoxSimple(
              imagen: 'assets/profile/prof1.jpg',
              titulo: 'Samantha Smith',
              subtitulo: '105 Silver Perl, Village Four, Pennsylvania, United State America',
            ),
          ),
          Positioned(
            bottom: 0,
            child: _Boton(),
          ),
        ],
      ),
    );
  }
}

class _BoxTexto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9,
      height: size.height * 0.075,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
      ),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Positioned(
            left: size.width * 0.03,
            top: size.height * 0.01,
            child: Text('Order Num', style: TextStyle(color: Colors.black54)),
          ),
          Positioned(
            left: size.width * 0.03,
            top: size.height * 0.03,
            child: Text('CCDF145412', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Positioned(
            right: size.width * 0.03,
            top: size.height * 0.01,
            child: Text('Faster Route', style: TextStyle(color: Colors.black54)),
          ),
          Positioned(
            right: size.width * 0.03,
            top: size.height * 0.03,
            child: Text('10 min (4.4 km)', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}

class _Boton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9,
      height: size.height * 0.075,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.purple,
      ),
      child: TextButton(
        onPressed: () {},
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          backgroundColor: MaterialStateProperty.all(
            Color(0xff381763),
          ),
        ),
        child: Text(
          'ACCEPT & GO',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
    );
  }
}
