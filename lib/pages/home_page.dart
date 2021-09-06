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
              CustomNavBar(),
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
              Positioned(
                top: size.height * 0.6,
                child: ListaRestaurantes(),
              )
              // Center(child: Text('Hola Mundo')),
            ],
          ),
        ),
      ),
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
      color: Colors.red,
    );
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
            onPressed: () {},
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

class CustomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.06,
      child: Row(
        children: [
          Container(padding: EdgeInsets.only(left: 10), child: Icon(Icons.menu, size: 30, color: Colors.white)),
          Spacer(),
          Text('New York', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white), textAlign: TextAlign.center),
          Icon(Icons.location_on, color: Colors.yellow, size: 30),
          SizedBox(width: 10)
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
      margin: EdgeInsets.symmetric(horizontal: 20),
      width: size.width * 0.6,
      height: size.height * 0.20,
      child: Stack(
        alignment: Alignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              image: AssetImage('assets/img1.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            right: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: size.width * 0.6,
                height: size.height * 0.187,
                decoration: BoxDecoration(
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
