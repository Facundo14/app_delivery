import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'MY CART',
          style: TextStyle(fontSize: size.width * 0.05),
        ),
        backgroundColor: Color(0xff381764),
        elevation: 0,
      ),
      backgroundColor: Color(0xff381764),
      body: SafeArea(
        child: Container(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              ListaMenu(),
              Positioned(bottom: size.height * 0.1, child: Ticket()),
              Positioned(bottom: size.height * 0.0001, child: _BotonFinal()),
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: size.width,
            height: size.height * 0.06,
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
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
                  style: TextStyle(fontSize: size.width * 0.035),
                ),
                Text(
                  '\$ 21.50',
                  style: TextStyle(fontSize: size.width * 0.035),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.1, vertical: size.width * 0.025),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Service Tax',
                  style: TextStyle(fontSize: size.width * 0.035),
                ),
                Text(
                  '\$ 2.50',
                  style: TextStyle(fontSize: size.width * 0.035),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.1, vertical: size.width * 0.025),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivery Charge',
                  style: TextStyle(fontSize: size.width * 0.04),
                ),
                Text(
                  '\$ 1.50',
                  style: TextStyle(fontSize: size.width * 0.04),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.1, vertical: size.width * 0.025),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Amount Payable',
                  style: TextStyle(fontSize: size.width * 0.05, fontWeight: FontWeight.bold),
                ),
                Text(
                  '\$ 25.50',
                  style: TextStyle(fontSize: size.width * 0.045, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'PROCEED TO CHECK OUT',
              style: TextStyle(color: Colors.purple.shade900, fontSize: size.width * 0.05, fontWeight: FontWeight.bold),
            ),
            SizedBox(width: size.height * 0.05),
            Icon(
              Icons.chevron_right,
              size: size.width * 0.09,
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
      height: size.height * 0.52,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 2,
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
                  height: size.height * 0.12,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Positioned(
                top: size.width * -0.08,
                right: size.width * -0.1,
                child: Container(
                  width: size.width * 0.31,
                  height: size.height * 0.15,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/productos/jamon.png'),
                      fit: BoxFit.fill,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(8, 3), // changes position of shadow
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: size.width * 0.035,
                left: size.width * 0.07,
                child: Text(
                  'Margherita Pizza',
                  style: TextStyle(fontSize: size.width * 0.06, fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                top: size.width * 0.12,
                left: size.width * 0.05,
                child: Container(
                  width: size.width * 0.5,
                  height: size.height * 0.04,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('500gm', style: TextStyle(fontWeight: FontWeight.bold, fontSize: size.width * 0.04)),
                      Text('2 Person', style: TextStyle(fontWeight: FontWeight.bold, fontSize: size.width * 0.04)),
                      Text('30 min', style: TextStyle(fontWeight: FontWeight.bold, fontSize: size.width * 0.04)),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: size.width * 0.26,
                left: size.width * 0.04,
                child: Container(
                  width: size.width * 0.9,
                  height: size.height * 0.04,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(width: size.width * 0.03),
                      Text(
                        'Size',
                        style: TextStyle(color: Colors.white, fontSize: size.width * 0.035),
                      ),
                      SizedBox(width: size.width * 0.03),
                      BotonesSumar(),
                      SizedBox(width: size.width * 0.2),
                      Text('\$10.00', style: TextStyle(color: Colors.white, fontSize: size.width * 0.035)),
                      Spacer(),
                      Cantidad(),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: size.height * 0.155,
                child: Container(
                  width: size.width * 0.9,
                  height: size.height * 0.05,
                  child: Center(
                    child: TextFormField(
                      style: TextStyle(color: Colors.grey),
                      decoration: InputDecoration(
                        hintText: 'Add note (eg. no onion, extra spice, etc)',
                        hintStyle: TextStyle(color: Colors.grey, fontSize: size.width * 0.035),
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
            height: size.width * 0.07,
            child: ElevatedButton(
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
                style: TextStyle(color: Colors.purple.shade900, fontWeight: FontWeight.bold, fontSize: size.width * 0.04),
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 1),
                alignment: Alignment.center,
                primary: Colors.yellow,
                elevation: 0,
              ),
            ),
          ),
          Container(
            child: Text(_cantidad.toString(), style: TextStyle(color: Colors.white, fontSize: size.width * 0.04)),
          ),
          Container(
            width: size.width * 0.07,
            height: size.width * 0.07,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  _cantidad++;
                  print(_cantidad);
                });
              },
              child: Text(
                '+',
                style: TextStyle(color: Colors.purple.shade900, fontWeight: FontWeight.bold, fontSize: size.width * 0.04),
                textAlign: TextAlign.center,
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 1),
                alignment: Alignment.center,
                primary: Colors.yellow,
                elevation: 0,
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
    final Size size = MediaQuery.of(context).size;
    return Container(
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          value: selectedValue,
          items: items
              .map(
                (String e) => DropdownMenuItem<String>(
                  child: Text(
                    e,
                    style: TextStyle(fontSize: size.width * 0.035),
                  ),
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
            style: TextStyle(color: Colors.white, fontSize: size.width * 0.035),
          ),
          style: TextStyle(color: Color(0xff01FFF1)),
          dropdownColor: Colors.deepPurple,
          iconSize: size.width * 0.035,
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
