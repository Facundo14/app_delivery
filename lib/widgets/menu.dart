import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.9,
      height: size.height * 0.75,
      child: SingleChildScrollView(
        child: Wrap(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: Icon(Icons.clear, size: size.height * 0.04),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    'Log out',
                    style: TextStyle(fontSize: size.height * 0.025),
                  ),
                ),
              ],
            ),
            GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, 'home');
                },
                child: MenuOpcion(imagen: 'assets/menu/home.png', titulo: 'Home')),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, 'restoList');
              },
              child: MenuOpcion(imagen: 'assets/menu/favorites.png', titulo: 'Favorites'),
            ),
            MenuOpcion(imagen: 'assets/menu/profile.png', titulo: 'Profile'),
            MenuOpcion(imagen: 'assets/menu/home.png', titulo: 'Home'),
            MenuOpcion(imagen: 'assets/menu/home.png', titulo: 'Home'),
            MenuOpcion(imagen: 'assets/menu/home.png', titulo: 'Home'),
          ],
        ),
      ),
    );
  }
}

class MenuOpcion extends StatelessWidget {
  final String titulo;
  final String imagen;

  const MenuOpcion({required this.titulo, required this.imagen});
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(size.width * 0.005),
      width: size.width * 0.45,
      height: size.height * 0.2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: size.width * 0.225,
            height: size.height * 0.09,
            child: Image.asset(imagen),
          ),
          SizedBox(height: size.height * 0.02),
          Text(
            titulo,
            style: TextStyle(fontSize: size.height * 0.03, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
