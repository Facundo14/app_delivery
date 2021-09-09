import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu, size: 35),
        title: Text('MY ORDERS'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Color(0xff381764),
      body: SafeArea(
        child: Container(
          width: size.width,
          height: size.height,
          child: Column(
            children: [
              //Background(),
              Botones(),
              ListCards()
            ],
          ),
        ),
      ),
    );
  }
}

class Botones extends StatefulWidget {
  @override
  _BotonesState createState() => _BotonesState();
}

class _BotonesState extends State<Botones> {
  int seleccion = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: size.width * 0.3,
            height: size.height * 0.06,
            child: TextButton(
              onPressed: () {
                setState(() {
                  seleccion = 0;
                });
              },
              child: Text(
                'New (4)',
                style: TextStyle(color: (seleccion == 0) ? Colors.deepPurple : Colors.white, fontWeight: FontWeight.bold),
              ),
              style: ButtonStyle(
                side: MaterialStateProperty.all(
                  BorderSide(
                    width: 2,
                    color: Colors.white,
                  ),
                ),
                elevation: MaterialStateProperty.all(0),
                backgroundColor: MaterialStateProperty.all((seleccion == 0) ? Colors.yellow : Colors.transparent),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: size.width * 0.3,
            height: size.height * 0.06,
            child: TextButton(
              onPressed: () {
                setState(() {
                  seleccion = 1;
                });
              },
              child: Text(
                'In Process (5)',
                style: TextStyle(color: (seleccion == 1) ? Colors.deepPurple : Colors.white, fontWeight: FontWeight.bold),
              ),
              style: ButtonStyle(
                side: MaterialStateProperty.all(
                  BorderSide(
                    width: 2,
                    color: Colors.white,
                  ),
                ),
                elevation: MaterialStateProperty.all(0),
                backgroundColor: MaterialStateProperty.all((seleccion == 1) ? Colors.yellow : Colors.transparent),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: size.width * 0.3,
            height: size.height * 0.06,
            child: TextButton(
              onPressed: () {
                setState(() {
                  seleccion = 2;
                });
              },
              child: Text(
                'Delivered',
                style: TextStyle(color: (seleccion == 2) ? Colors.deepPurple : Colors.white, fontWeight: FontWeight.bold),
              ),
              style: ButtonStyle(
                side: MaterialStateProperty.all(
                  BorderSide(
                    width: 2,
                    color: Colors.white,
                  ),
                ),
                elevation: MaterialStateProperty.all(0),
                backgroundColor: MaterialStateProperty.all((seleccion == 2) ? Colors.yellow : Colors.transparent),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
                  ),
                ),
              ),
            ),
          ),
        ],
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
            return Cards();
          },
        ),
      ),
    );
  }
}

class Cards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        width: size.width,
        height: size.height * 0.18,
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              width: size.width,
              height: size.height * 0.15,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.2),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: size.width,
              height: size.height * 0.1,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            Positioned(
              top: 21,
              left: 30,
              child: Container(
                width: size.width * 0.15,
                height: size.height * 0.075,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            Positioned(
              top: 21,
              left: 100,
              child: Text(
                'Samantha Smith',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              top: 55,
              left: 180,
              child: Text(
                '198 Poeple rated',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Positioned(
              left: 28,
              bottom: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: size.width * 0.6,
                    child: Text(
                      'Margherita Pizza (1), Crust Gourmet Pizza',
                      style: TextStyle(color: Colors.white),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(width: size.width * 0.045),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'View Order',
                      style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.yellow),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
