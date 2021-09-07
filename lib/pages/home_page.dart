import 'dart:ui';

import 'package:app_delivery/widgets/custom_navbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xff381764),
      body: SafeArea(
        child: Container(
          width: size.width,
          height: size.height,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              //Background(),
              FondoDifuminado(),
              CustomNavBar(
                titulo: 'New York',
                icono: Icons.location_on,
              ),
              Positioned(
                top: size.height * 0.07,
                child: Slideshow(),
              ),
              //Slideshow(),
              Positioned(
                top: size.height * 0.29,
                right: size.width * 0.05,
                left: size.width * 0.05,
                child: InputSearch(),
              ),
              Positioned(
                top: size.height * 0.34,
                child: CategoryFoodSlide(),
              ),
              Positioned(
                top: size.height * 0.5,
                child: TextoYBoton(),
              ),
              Positioned(bottom: size.height * -0.63, child: ListaRestaurantes()),
              // Center(child: Text('Hola Mundo')),
            ],
          ),
        ),
      ),
    );
  }
}

class FondoDifuminado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.51,
      decoration: BoxDecoration(color: Colors.white.withOpacity(0.05)),
    );
  }
}

class ListaRestaurantes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Restaurantes();
        },
      ),
    );
  }
}

class Restaurantes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        width: size.width,
        height: size.height * 0.226,
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              width: size.width,
              height: size.height * 0.2,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.2),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: size.width,
              height: size.height * 0.15,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            Positioned(
              top: 30,
              left: 30,
              child: Container(
                width: size.width * 0.2,
                height: size.height * 0.10,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            Positioned(
              top: 30,
              right: 50,
              child: Text(
                'Marine Rise Restaurant',
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              top: 60,
              right: 190,
              child: Container(
                width: size.width * 0.19,
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
                        style: TextStyle(fontSize: 17),
                      ),
                      SizedBox(width: size.width * 0.02),
                      Icon(Icons.star),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 75,
              right: 80,
              child: Text(
                '198 Poeple rated',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Positioned(
              left: 40,
              bottom: 20,
              child: Row(
                children: [
                  Icon(Icons.location_on, color: Colors.yellow),
                  SizedBox(width: size.width * 0.05),
                  Text('1124, Old Church Street, New York, USA', style: TextStyle(color: Colors.white)),
                  SizedBox(width: size.width * 0.05),
                  Icon(Icons.navigation, color: Colors.yellow)
                ],
              ),
            ),
          ],
        ));
  }
}

class TextoYBoton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(width: size.width * 0.04),
          Text(
            'Restaruants Near you',
            style: TextStyle(color: Colors.white.withOpacity(0.3), fontSize: 20),
          ),
          Spacer(),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, 'map');
            },
            child: Text(
              'View in map',
              style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold, fontSize: 18),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.yellow),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomLeft: Radius.circular(30)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Slideshow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.2,
      width: size.width,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return CardSlide();
        },
      ),
    );
  }
}

class CardSlide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      height: size.height * 0.20,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              image: AssetImage('assets/img1.jpg'),
              fit: BoxFit.contain,
            ),
          ),
          Container(
            width: size.width * 0.725,
            height: size.height * 0.2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                begin: FractionalOffset.bottomLeft,
                end: FractionalOffset.topRight,
                colors: [
                  Colors.transparent.withOpacity(0.006),
                  Colors.grey,
                ],
                stops: [0.3, 1.0],
              ),
            ),
          ),
          Positioned(
            right: 0,
            child: Container(
              width: size.width * 0.3,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 20, top: 20),
                    child: Text(
                      'NEW FLAVORS ADDED',
                      style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'GET THE DEAL >>',
                    style: TextStyle(fontSize: 13, color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class InputSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.06,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(35),
      ),
      child: Row(
        children: [
          SizedBox(width: 15),
          Icon(
            Icons.search,
            color: Color(0xff381764),
            size: 35,
          ),
          Expanded(
            child: TextField(
              style: TextStyle(
                fontSize: size.height * 0.02,
              ),
              decoration: InputDecoration(
                hintText: 'What\'d you like to eat today?',
                hintStyle: TextStyle(color: Colors.grey),
                contentPadding: EdgeInsets.zero,
                border: InputBorder.none,
              ),
            ),
          ),
          Icon(
            Icons.tune,
            size: 30,
            color: Colors.grey,
          ),
          SizedBox(width: 20)
        ],
      ),
    );
  }
}

class CategoryFoodSlide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.15,
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _CategoryFood(img: 'assets/category/pez.png', titulo: 'Chinase Food'),
            _CategoryFood(img: 'assets/category/vegetales.png', titulo: 'Diet Food'),
            _CategoryFood(img: 'assets/category/pizza.png', titulo: 'Italian'),
            _CategoryFood(img: 'assets/category/sushi.png', titulo: 'Sea Food'),
          ],
        ),
      ),
    );
  }
}

class _CategoryFood extends StatelessWidget {
  final String img;
  final String titulo;

  const _CategoryFood({required this.img, required this.titulo});
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 18),
          width: size.width * 0.2,
          height: size.height * 0.15,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            padding: EdgeInsets.all(15),
            child: Image(
              image: AssetImage(this.img),
              fit: BoxFit.contain,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Text(
            this.titulo,
            style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
