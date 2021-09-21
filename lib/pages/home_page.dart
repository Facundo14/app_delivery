import 'dart:ui';

import 'package:app_delivery/animations/slider-animation.dart';
import 'package:app_delivery/data/bloc/platos/platos_bloc.dart';
import 'package:app_delivery/widgets/menu.dart';
import 'package:app_delivery/widgets/top_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print(size.width);

    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(
            Icons.location_on,
            color: Colors.yellow,
          )
        ],
        title: Row(
          children: [
            Spacer(),
            Text('New York'),
          ],
        ),
        leading: GestureDetector(
            onTap: () {
              TopSheetView.show(
                context: context,
                child: SingleChildScrollView(
                  child: Menu(),
                ),
                direction: TopSheetDirection.TOP,
              );
            },
            child: Icon(Icons.menu)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
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

              Positioned(
                top: size.height * 0.01,
                child: Slideshow(),
              ),
              //Slideshow(),
              Positioned(
                top: size.height * 0.3,
                right: size.width * 0.05,
                left: size.width * 0.05,
                child: InputSearch(),
              ),
              Positioned(
                top: size.height * 0.38,
                child: CategoryFoodSlide(),
              ),
              Positioned(
                top: size.height * 0.5,
                child: TextoYBoton(),
              ),
              Positioned(
                top: size.height * 0.58,
                child: ListaRestaurantes(),
              ),
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
      height: size.height * 0.5,
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
      height: size.height * 0.3,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return SlideAnimation(
            duration: Duration(milliseconds: 1000),
            itemCount: 5,
            position: index,
            slideDirection: SlideDirection.fromLeft,
            child: Restaurantes(),
          );
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
      width: double.infinity,
      height: size.height * 0.17,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            width: size.width,
            height: size.height * 0.15,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.2),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            width: size.width,
            height: size.height * 0.1,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Positioned(
            top: size.width * 0.04,
            left: size.width * 0.06,
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'restoInfo');
              },
              child: Container(
                width: size.width * 0.15,
                height: size.height * 0.075,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ),
          Positioned(
            top: size.width * 0.05,
            left: size.width * 0.3,
            child: Text(
              'Marine Rise Restaurant',
              style: TextStyle(fontSize: size.width * 0.05, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: size.width * 0.12,
            left: size.width * 0.3,
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
                      style: TextStyle(fontSize: size.width * 0.032),
                    ),
                    SizedBox(width: size.width * 0.005),
                    Icon(
                      Icons.star,
                      size: size.width * 0.035,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: size.width * 0.12,
            left: size.width * 0.46,
            child: Text(
              '198 Poeple rated',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Positioned(
            left: size.width * 0.06,
            bottom: size.height * 0.025,
            child: Container(
              width: size.width * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.location_on, color: Colors.yellow, size: size.width * 0.05),
                  SizedBox(width: size.width * 0.05),
                  Text('1124, Old Church Street, New York, USA', style: TextStyle(color: Colors.white, fontSize: size.width * 0.032)),
                  SizedBox(width: size.width * 0.05),
                  Icon(Icons.navigation, color: Colors.yellow, size: size.width * 0.05)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TextoYBoton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.09,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(width: size.width * 0.04),
          Text(
            'Restaruants Near you',
            style: TextStyle(color: Colors.white.withOpacity(0.3), fontSize: size.width * 0.04),
          ),
          Spacer(),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, 'map');
            },
            child: Text(
              'View in map',
              style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold, fontSize: size.width * 0.045),
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
      height: size.height * 0.265,
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
      width: size.width * 0.9,
      height: size.height * 0.20,
      margin: EdgeInsets.symmetric(horizontal: size.height * 0.005),
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: Image(
                image: AssetImage('assets/img1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
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
                    padding: EdgeInsets.only(right: size.height * 0.013, top: size.height * 0.013),
                    child: Text(
                      'NEW FLAVORS ADDED',
                      style: TextStyle(fontSize: size.width * 0.05, color: Colors.white, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  SizedBox(height: size.height * 0.013),
                  Text(
                    'GET THE DEAL >>',
                    style: TextStyle(fontSize: size.width * 0.035, color: Colors.white, fontWeight: FontWeight.bold),
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
      height: size.height * 0.08,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(35),
      ),
      child: Row(
        children: [
          SizedBox(width: size.width * 0.04),
          Icon(
            Icons.search,
            color: Color(0xff381764),
            size: size.width * 0.08,
          ),
          Expanded(
            child: TextField(
              style: TextStyle(
                fontSize: size.height * 0.02,
              ),
              decoration: InputDecoration(
                hintText: 'What\'d you like to eat today?',
                hintStyle: TextStyle(color: Colors.grey),
                contentPadding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                border: InputBorder.none,
              ),
            ),
          ),
          Icon(
            Icons.tune,
            size: size.width * 0.08,
            color: Colors.grey,
          ),
          SizedBox(width: size.width * 0.05)
        ],
      ),
    );
  }
}

class CategoryFoodSlide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final blocProvider = BlocProvider.of<PlatosBloc>(context);
    blocProvider.add(OnObtieneCategorias());
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.1,
      child: BlocBuilder<PlatosBloc, PlatosState>(
        builder: (_, state) {
          print(state.lstCategorias);
          if (state.isWorking) {
            return CircularProgressIndicator();
          }
          return ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: state.lstCategorias.length,
            itemBuilder: (BuildContext context, int index) {
              return CategoryFood(
                  img: '${state.lstCategorias[index].imagenDispositivo}', titulo: '${state.lstCategorias[index].categoria}');
            },
            // child: SingleChildScrollView(
            //   physics: BouncingScrollPhysics(),
            //   scrollDirection: Axis.horizontal,
            //   child: Row(
            //     children: [
            //       CategoryFood(img: 'assets/category/vegetales.png', titulo: 'Diet Food'),
            //       CategoryFood(img: 'assets/category/pizza.png', titulo: 'Italian'),
            //       CategoryFood(img: 'assets/category/sushi.png', titulo: 'Sea Food'),
            //     ],
            //   ),
            // ),
          );
        },
      ),
    );
  }
}

class CategoryFood extends StatelessWidget {
  final String img;
  final String titulo;

  const CategoryFood({required this.img, required this.titulo});
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: size.height * 0.02),
          width: size.width * 0.17,
          height: size.height * 0.10,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            padding: EdgeInsets.all(size.height * 0.013),
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
            style: TextStyle(color: Colors.white, fontSize: size.height * 0.015, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
