import 'package:app_delivery/pages/pages.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'login',
      routes: {
        'login': (_) => LoginPage(),
        'registro': (_) => RegistroPage(),
        'home': (_) => HomePage(),
        'map': (_) => MapPage(),
        'order': (_) => OrderPage(),
        'items': (_) => ItemsPage(),
      },
      home: HomePage(),
    );
  }
}
