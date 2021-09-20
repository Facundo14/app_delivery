import 'package:app_delivery/widgets/boton_final.dart';
import 'package:flutter/material.dart';

class ItemsClientPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'FOOD ITEMS',
          style: TextStyle(fontSize: size.width * 0.043),
        ),
        actions: [
          Icon(Icons.search, size: size.width * 0.07),
          SizedBox(width: size.width * 0.05),
        ],
        leading: Icon(Icons.menu, size: size.width * 0.07),
        backgroundColor: Colors.white.withOpacity(0.1),
        elevation: 0,
      ),
      backgroundColor: Color(0xff381764),
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              top: 0,
              child: CategoriasSlider(),
            ),
            Positioned(
              top: size.height * 0.21,
              child: ListaComidas(),
            ),
            Positioned(
              bottom: 0,
              child: BotonFinal(),
            )
          ],
        ),
      ),
    );
  }
}

class ListaComidas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      color: Colors.white.withOpacity(0.1),
      child: ExpansionTile(
        textColor: Colors.yellow,
        title: Text(
          'Italian Pizza',
          style: TextStyle(color: Colors.yellow, fontWeight: FontWeight.bold, fontSize: size.width * 0.04),
        ),
        trailing: Container(
          width: size.width * 0.2,
          height: size.height * 0.5,
          child: Row(
            children: [
              Text(
                '34 items',
                style: TextStyle(color: Colors.white, fontSize: size.width * 0.035),
              ),
              Spacer(),
              Icon(
                Icons.keyboard_arrow_down,
                color: Colors.white,
                size: size.width * 0.05,
              ),
            ],
          ),
        ),
        children: [
          Container(
            width: size.width * 0.97,
            height: size.height * 0.54,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.all(5),
                  width: size.width * 0.7,
                  height: size.height * 0.25,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        top: size.height * 0.00001,
                        child: Container(
                          width: size.width * 0.94,
                          height: size.height * 0.2,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      Positioned(
                        top: size.width * -0.1,
                        left: size.width * 0.7,
                        child: Container(
                          width: size.width * 0.4,
                          height: size.height * 0.22,
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
                        top: size.width * 0.04,
                        left: size.width * 0.05,
                        child: Text(
                          'Margherita Pizza',
                          style: TextStyle(fontSize: size.width * 0.06, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Positioned(
                        top: size.width * 0.13,
                        left: size.width * 0.05,
                        child: Container(
                          width: size.width * 0.5,
                          height: size.height * 0.04,
                          child: Text(
                            'Margherita Pizza (1), Crust Gourmet Pizza',
                            style: TextStyle(color: Colors.black54, fontSize: size.width * 0.03),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      Positioned(
                        top: size.width * 0.22,
                        left: size.width * 0.007,
                        child: Container(
                          width: size.width * 0.5,
                          height: size.height * 0.04,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('500gm', style: TextStyle(fontWeight: FontWeight.bold, fontSize: size.width * 0.03)),
                              Text('2 Person', style: TextStyle(fontWeight: FontWeight.bold, fontSize: size.width * 0.03)),
                              Text('30 min', style: TextStyle(fontWeight: FontWeight.bold, fontSize: size.width * 0.03)),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: size.height * 0.205,
                        left: size.width * 0.03,
                        child: Container(
                          width: size.width * 0.9,
                          height: size.height * 0.04,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Size',
                                style: TextStyle(color: Colors.white, fontSize: size.width * 0.04),
                              ),
                              SizedBox(width: size.width * 0.03),
                              _DropDownMenu(),
                              SizedBox(width: size.width * 0.2),
                              Text('\$10.00', style: TextStyle(color: Colors.white, fontSize: size.width * 0.04)),
                              Spacer(),
                              _Cantidad(),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class _Cantidad extends StatefulWidget {
  @override
  __CantidadState createState() => __CantidadState();
}

int _cantidad = 0;

class __CantidadState extends State<_Cantidad> {
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

class _DropDownMenu extends StatefulWidget {
  @override
  _DropDownMenuState createState() => _DropDownMenuState();
}

class _DropDownMenuState extends State<_DropDownMenu> {
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
          disabledHint: Text(
            "Disabled",
            style: TextStyle(fontSize: size.width * 0.035),
          ),
          elevation: 0,
          icon: Icon(
            Icons.keyboard_arrow_down,
            size: size.width * 0.035,
          ),
          iconDisabledColor: Colors.red,
          iconEnabledColor: Color(0xff01FFF1),
        ),
      ),
    );
  }
}

class CategoriasSlider extends StatefulWidget {
  @override
  _CategoriasSliderState createState() => _CategoriasSliderState();
}

class _CategoriasSliderState extends State<CategoriasSlider> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.2,
      color: Colors.white.withOpacity(0.1),
      child: RotatedBox(
        quarterTurns: 3,
        child: new ListWheelScrollView(
          itemExtent: 100,
          onSelectedItemChanged: (x) {
            setState(() {
              selected = x;
            });
          },
          physics: BouncingScrollPhysics(),
          children: List<Widget>.generate(
            5,
            (index) => Container(
              height: size.height * 0.3,
              width: size.width * 0.4,
              child: RotatedBox(
                quarterTurns: 1,
                child: Column(
                  children: [
                    Container(
                      width: size.width * 0.228,
                      height: size.height * 0.15,
                      child: Image(
                        image: AssetImage('assets/category/pez.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                    Text(
                      'Chinase Food',
                      style: (index == selected)
                          ? TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: size.width * 0.035)
                          : TextStyle(color: Colors.white, fontSize: size.width * 0.035),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
