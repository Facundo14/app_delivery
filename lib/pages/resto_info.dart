import 'dart:ui';

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
            Positioned(top: 250, child: Restaurante()),
            Positioned(top: 220, left: 68, child: _ImagenResto()),
            Positioned(top: 410, child: _DescripcionResto()),
            Positioned(top: 570, child: ComentariosPersonas()),
            Positioned(bottom: 0, child: _Boton())
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
    return Container(
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
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
        ],
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
      height: size.width * 0.55,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'What People Says',
            style: TextStyle(color: Colors.grey),
          ),
          Container(
            width: size.width * 0.9,
            height: size.width * 0.49,
            child: ListView.builder(
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
                return _BoxOpnion();
              },
            ),
          )
        ],
      ),
    );
  }
}

class _BoxOpnion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(5),
      width: size.width * 0.8,
      height: size.width * 0.3,
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
      width: size.width * 0.75,
      height: size.height * 0.05,
      child: Text(
        'Qui est exercitation velit labore labore cupidatat.Qui est exercitation velit labore labore cupidatat.Qui est exercitation velit labore labore cupidatat.Qui est exercitation velit labore labore cupidatat.',
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
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(height: size.width * 0.01),
                Text('24 de Junio, 2020'),
              ],
            ),
          ),
          Container(
            width: size.width * 0.2,
            height: size.width * 0.14,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.star, size: 16, color: Colors.green),
                Icon(Icons.star, size: 16, color: Colors.green),
                Icon(Icons.star, size: 16, color: Colors.green),
                Icon(Icons.star, size: 16, color: Colors.green),
                Icon(Icons.star_border, size: 16, color: Colors.grey),
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
      padding: EdgeInsets.all(10),
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
              'Consequat est aliqua non irure cillum pariatur amet duis elit non cillum adipisicing elit ullamco. Proident velit enim Lorem Lorem aute consectetur labore dolor. Adipisicing mollit culpa quis nulla culpa ex excepteur excepteur incididunt anim Lorem eiusmod dolore. Occaecat consectetur ullamco sit voluptate deserunt ullamco nulla laborum qui laboris sunt est reprehenderit. Incididunt amet laborum eiusmod ipsum ex consequat pariatur elit aute cupidatat officia minim officia et.',
              maxLines: 7,
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
            margin: EdgeInsets.all(10),
            width: size.width,
            height: size.height * 0.8,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.2),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: size.width,
            height: size.height * 0.14,
            decoration: BoxDecoration(
              color: Color(0xff381764),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Positioned(
            top: 21,
            left: 150,
            child: Container(
              width: size.width * 0.30,
              height: size.height * 0.06,
              child: Text(
                'Marine Rise Restaurant',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Positioned(
            top: 78,
            left: 70,
            child: Container(
              height: size.height * 0.03,
              width: size.width * 0.15,
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
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(width: size.width * 0.005),
                    Icon(
                      Icons.star,
                      size: 17,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 80,
            left: 155,
            child: Text(
              '198 Poeple rated',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Positioned(
            left: 28,
            bottom: 18,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.location_on, color: Colors.yellow, size: 15),
                SizedBox(width: size.width * 0.05),
                Text('1124, Old Church Street, New York, USA', style: TextStyle(color: Colors.white)),
                SizedBox(width: size.width * 0.05),
                Icon(Icons.navigation, color: Colors.yellow, size: 15)
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
      height: size.height * 0.6,
      child: Stack(
        children: [
          Image.network(
            'https://th.bing.com/th/id/OIP.VusCj0G5GfqNUnh4czA9mAAAAA?pid=ImgDet&w=450&h=315&rs=1',
            fit: BoxFit.fill,
          ),
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
