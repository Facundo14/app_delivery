import 'package:flutter/material.dart';

const String kTitle = 'Horizontal ListWheelScrollView Sample';

class ItemsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('FOOD ITEMS'),
        actions: [
          Icon(Icons.search, size: 30),
          SizedBox(width: 20),
        ],
        leading: Icon(Icons.menu, size: 30),
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
              child: Container(
                width: size.width,
                height: size.height * 0.1,
                color: Colors.yellow,
                child: Center(
                  child: Text(
                    'ADD NEW ITEM',
                    style: TextStyle(color: Colors.purple.shade900, fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
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
          style: TextStyle(color: Colors.yellow, fontWeight: FontWeight.bold),
        ),
        trailing: Container(
          width: size.width * 0.2,
          height: size.height * 0.5,
          child: Row(
            children: [
              Text(
                '34 items',
                style: TextStyle(color: Colors.white),
              ),
              Spacer(),
              Icon(
                Icons.keyboard_arrow_down,
                color: Colors.white,
              ),
            ],
          ),
        ),
        children: [
          SingleChildScrollView(
            child: Container(
              width: size.width * 0.97,
              height: size.height * 0.54,
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
                          top: 0,
                          child: Container(
                            width: size.width,
                            height: size.height * 0.2,
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
                          top: 30,
                          left: 20,
                          child: Text(
                            'Margherita Pizza',
                            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Positioned(
                          top: 70,
                          left: 20,
                          child: Container(
                            width: size.width * 0.5,
                            height: size.height * 0.04,
                            child: Text(
                              'Margherita Pizza (1), Crust Gourmet Pizza',
                              style: TextStyle(color: Colors.black54),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 115,
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
                          bottom: 3,
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
                                _DropDownMenu(),
                                SizedBox(width: size.width * 0.2),
                                Text('\$10.00', style: TextStyle(color: Colors.white)),
                                Spacer(),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    '    EDIT    ',
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
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          )
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
                          ? TextStyle(fontWeight: FontWeight.bold, color: Colors.white)
                          : TextStyle(color: Colors.white),
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
