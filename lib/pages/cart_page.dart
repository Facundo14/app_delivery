import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('MY CART'),
        backgroundColor: Color(0xff381764),
        elevation: 0,
      ),
      backgroundColor: Color(0xff381764),
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              ListaMenu(),
              Positioned(bottom: 110, child: Ticket()),
              Positioned(bottom: 30, child: _BotonFinal()),
            ],
          ),
        ),
      ),
    );
  }
}

class Ticket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.25,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sub Total',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    '\$ 21.50',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Service Tax',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    '\$ 2.50',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Delivery Charge',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    '\$ 1.50',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Amount Payable',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '\$ 25.50',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BotonFinal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'address');
      },
      child: Container(
        width: size.width,
        height: size.height * 0.1,
        color: Colors.yellow,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'PROCEED TO CHECK OUT',
              style: TextStyle(color: Colors.purple.shade900, fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(width: size.height * 0.05),
            Icon(
              Icons.chevron_right,
              size: 40,
              color: Colors.purple.shade900,
            )
          ],
        ),
      ),
    );
  }
}

class ListaMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.6,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return _ContenedorPedido();
        },
      ),
    );
  }
}

class _ContenedorPedido extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(5),
      width: size.width * 0.9,
      height: size.height * 0.23,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Positioned(
                top: 0,
                child: Container(
                  width: size.width * 0.98,
                  height: size.height * 0.15,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Positioned(
                top: -30,
                right: -30,
                child: Container(
                  width: size.width * 0.36,
                  height: size.height * 0.18,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(8, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Image(
                    image: AssetImage('assets/productos/jamon.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                top: 20,
                left: 20,
                child: Text(
                  'Margherita Pizza',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                top: 60,
                left: 8,
                child: Container(
                  width: size.width * 0.5,
                  height: size.height * 0.04,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('500gm', style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('2 Person', style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('30 min', style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 125,
                left: 8,
                child: Container(
                  width: size.width * 0.9,
                  height: size.height * 0.04,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(width: size.width * 0.03),
                      Text(
                        'Size',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: size.width * 0.03),
                      BotonesSumar(),
                      SizedBox(width: size.width * 0.2),
                      Text('\$10.00', style: TextStyle(color: Colors.white)),
                      Spacer(),
                      Cantidad(),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: size.width * 0.9,
                  height: size.height * 0.05,
                  child: Center(
                    child: TextFormField(
                      style: TextStyle(color: Colors.grey),
                      decoration: InputDecoration(
                        hintText: 'Add note (eg. no onion, extra spice, etc)',
                        hintStyle: TextStyle(color: Colors.grey),
                        alignLabelWithHint: true,
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class Cantidad extends StatefulWidget {
  @override
  _CantidadState createState() => _CantidadState();
}

int _cantidad = 0;

class _CantidadState extends State<Cantidad> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.25,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: size.width * 0.07,
            child: TextButton(
              onPressed: () {
                setState(() {
                  if (_cantidad <= 0) {
                    _cantidad = 0;
                  } else {
                    _cantidad--;
                  }
                  print(_cantidad);
                });
              },
              child: Text(
                '-',
                style: TextStyle(color: Colors.purple.shade900, fontWeight: FontWeight.bold, fontSize: 15),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.yellow),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Text(_cantidad.toString(), style: TextStyle(color: Colors.white)),
          ),
          Container(
            width: size.width * 0.07,
            child: TextButton(
              onPressed: () {
                setState(() {
                  _cantidad++;
                  print(_cantidad);
                });
              },
              child: Text(
                '+',
                style: TextStyle(color: Colors.purple.shade900, fontWeight: FontWeight.bold, fontSize: 15),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.yellow),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
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

class BotonesSumar extends StatefulWidget {
  @override
  _BotonesSumarState createState() => _BotonesSumarState();
}

class _BotonesSumarState extends State<BotonesSumar> {
  String selectedValue = 'Small';

  final List<String> items = ['Small', 'Medium', 'Big'];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          value: selectedValue,
          items: items
              .map(
                (String e) => DropdownMenuItem<String>(
                  child: Text(e),
                  value: e,
                ),
              )
              .toList(),
          onChanged: (value) {
            setState(() {
              selectedValue = value.toString();
            });
          },
          hint: Text(
            "Tamaño",
            style: TextStyle(color: Colors.white),
          ),
          style: TextStyle(color: Color(0xff01FFF1)),
          dropdownColor: Colors.deepPurple,
          disabledHint: Text("Disabled"),
          elevation: 0,
          icon: Icon(Icons.keyboard_arrow_down),
          iconDisabledColor: Colors.red,
          iconEnabledColor: Color(0xff01FFF1),
        ),
      ),
    );
  }
}
