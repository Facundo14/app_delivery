import 'dart:ui';

import 'package:app_delivery/widgets/custom_navbar.dart';
import 'package:app_delivery/widgets/menu.dart';
import 'package:app_delivery/widgets/top_sheet.dart';
import 'package:flutter/material.dart';

class RestoInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff381764),
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(top: 0, child: _FondoImagen()),
            Positioned(
              top: size.height * 0.05,
              child: GestureDetector(
                onTap: () {
                  TopSheetView.show(
                    context: context,
                    child: Menu(),
                    direction: TopSheetDirection.TOP,
                  );
                },
                child: CustomNavBar(),
              ),
            ),
            Positioned(top: size.height * 0.2, left: size.width * 0.04, child: Restaurante()),
            Positioned(top: size.height * 0.15, left: size.width * 0.1, child: _ImagenResto()),
            Positioned(
              top: size.height * 0.4,
              child: Column(
                children: [
                  _DescripcionResto(),
                  ComentariosPersonas(),
                ],
              ),
            ),
            Positioned(
              top: size.height * 0.93,
              child: _Boton(),
            ),

            // Positioned(top: size.height * 0.4, child: _DescripcionResto()),
            // Positioned(top: size.height * 0.67, child: ComentariosPersonas()),
            // _Boton()
          ],
        ),
      ),
    );
  }
}

class _Boton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'cartList');
      },
      child: Container(
        width: size.width,
        height: size.height * 0.07,
        color: Colors.yellow,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant_menu),
            Container(
              width: size.width * 0.45,
              height: size.width * 0.07,
              child: Center(
                child: Text(
                  'ORDER FOOD NOW',
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: size.width * 0.05),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ComentariosPersonas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9,
      height: size.width,
      margin: EdgeInsets.only(top: size.width * 0.015),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'What People Says',
              style: TextStyle(color: Colors.grey),
            ),
            Container(
              width: size.width * 0.9,
              height: size.height * 0.30,
              child: ListView.builder(
                padding: EdgeInsets.symmetric(vertical: size.height * 0.01),
                physics: BouncingScrollPhysics(),
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return _BoxOpnion();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _BoxOpnion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      height: size.width * 0.3,
      margin: EdgeInsets.symmetric(vertical: size.width * 0.01),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          _DatosUsuario(),
          _Comentario(),
        ],
      ),
    );
  }
}

class _Comentario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.78,
      child: Text(
        'Qui est exercitation velit labore labore cupidatat.Qui est exercitation velit labore labore cupidatat.Qui est exercitation velit labore labore cupidatat.Qui est exercitation velit labore labore cupidatat.',
        style: TextStyle(fontSize: size.width * 0.03),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.justify,
      ),
    );
  }
}

class _DatosUsuario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      height: size.height * 0.1,
      child: Row(
        children: [
          Container(
            width: size.width * 0.2,
            height: size.width * 0.2,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/profile/prof1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            width: size.width * 0.34,
            height: size.width * 0.15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Pepito Juanito',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: size.width * 0.05),
                ),
                SizedBox(height: size.width * 0.01),
                Text(
                  '24 de Junio, 2020',
                  style: TextStyle(fontSize: size.width * 0.04),
                ),
              ],
            ),
          ),
          Container(
            width: size.width * 0.2,
            height: size.width * 0.14,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.star, size: size.width * 0.04, color: Colors.green),
                Icon(Icons.star, size: size.width * 0.04, color: Colors.green),
                Icon(Icons.star, size: size.width * 0.04, color: Colors.green),
                Icon(Icons.star, size: size.width * 0.04, color: Colors.green),
                Icon(Icons.star_border, size: size.width * 0.04, color: Colors.grey),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _DescripcionResto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(size.width * 0.01),
      width: size.width * 0.9,
      height: size.width * 0.4,
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About Resto',
              textAlign: TextAlign.start,
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: size.width * 0.03),
            Text(
              'Consequat est aliqua non m adipisicing elit ullamco. Proident velit enim Lorem Lorem aute consectetur labore dolor. Adipisicing mollit culpa quis nulla culpa ex excepteur excepteur incididunt anim Lorem eiusmod dolore. Occaecat consectetur ullamco sit voluptate deserunt ullamco nulla laborum qui laboris sunt est reprehenderit. Incididunt amet laborum eiusmod ipsum ex consequat pariatur elit aute cupidatat officia minim officia et.',
              maxLines: 12,
              textAlign: TextAlign.justify,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

class _ImagenResto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Hero(
      tag: 'resto-index',
      child: Container(
        width: size.width * 0.25,
        height: size.width * 0.25,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

class Restaurante extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9,
      height: size.height * 0.2,
      child: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height * 0.8,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.2),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Container(
            width: size.width,
            height: size.height * 0.15,
            decoration: BoxDecoration(
              color: Color(0xff381764),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Positioned(
            top: size.width * 0.035,
            left: size.width * 0.35,
            child: Container(
              width: size.width * 0.5,
              height: size.height * 0.07,
              alignment: Alignment.topLeft,
              child: Text(
                'Marine Rise Restaurant',
                style: TextStyle(fontSize: size.width * 0.05, fontWeight: FontWeight.bold, color: Colors.white),
                textAlign: TextAlign.start,
              ),
            ),
          ),
          Positioned(
            top: size.width * 0.19,
            left: size.width * 0.1,
            child: Container(
              height: size.height * 0.035,
              width: size.width * 0.17,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 10)),
                  elevation: MaterialStateProperty.all(0),
                  backgroundColor: MaterialStateProperty.all(Color(0xff45AE17)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Text(
                      '4.3',
                      style: TextStyle(fontSize: size.width * 0.04),
                    ),
                    SizedBox(width: size.width * 0.007),
                    Icon(
                      Icons.star,
                      size: size.width * 0.04,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: size.width * 0.19,
            left: size.width * 0.36,
            child: Text(
              '198 Poeple rated',
              style: TextStyle(color: Colors.grey, fontSize: size.width * 0.034),
            ),
          ),
          Positioned(
            left: size.width * 0.04,
            bottom: size.width * 0.025,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.location_on, color: Colors.yellow, size: size.width * 0.04),
                SizedBox(width: size.width * 0.05),
                Text('1124, Old Church Street, New York, USA', style: TextStyle(color: Colors.white, fontSize: size.width * 0.035)),
                SizedBox(width: size.width * 0.05),
                Icon(Icons.navigation, color: Colors.yellow, size: size.width * 0.04)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _FondoImagen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.32,
      child: Stack(
        alignment: Alignment.center,
        children: [
          _Imagen(),
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 1,
              sigmaY: 1,
            ),
            child: Container(),
          )
        ],
      ),
    );
  }
}

class _Imagen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image.network(
        'https://th.bing.com/th/id/R.31c4680445695afc9d8afc3d335ae5e7?rik=sKjIYgczzRhoZQ&pid=ImgRaw&r=0',
        fit: BoxFit.cover,
      ),
    );
  }
}
