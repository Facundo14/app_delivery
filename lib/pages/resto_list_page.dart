import 'package:app_delivery/pages/home_page.dart';
import 'package:flutter/material.dart';

class RestoListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('RESTAURANTS'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Icon(Icons.search),
          SizedBox(width: 15),
          Icon(Icons.tune),
          SizedBox(width: 20),
        ],
      ),
      backgroundColor: Color(0xff381764),
      body: SafeArea(
        child: Container(
          width: size.width,
          height: size.height,
          child: Column(
            children: [
              //Background(),
              ListCards()
            ],
          ),
        ),
      ),
    );
  }
}

class ListCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Restaurantes();
          },
        ),
      ),
    );
  }
}
