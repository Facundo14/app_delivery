import 'package:app_delivery/widgets/boton_procedd.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddressPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('SELECT DELIVERY ADRRESS', style: TextStyle(fontSize: 18)),
        backgroundColor: Color(0xff381764),
        elevation: 0,
        leading: Icon(Icons.chevron_left, color: Colors.white, size: 35),
      ),
      backgroundColor: Color(0xff381764),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: _Direcciones(),
      ),
    );
  }
}

class DireccionModel {
  final bool activo;
  final String titulo;
  final String direccion;
  final String telefono;

  DireccionModel({this.activo = false, this.titulo = '', this.direccion = '', this.telefono = ''});
}

final DireccionModel direccion1 = new DireccionModel(
  activo: true,
  titulo: 'Home',
  direccion: 'Avenida Pepito 1544, Posadas - Misiones - Argentina',
  telefono: '+54 11 554464589',
);

final DireccionModel direccion2 = new DireccionModel(
  activo: false,
  titulo: 'Direccion 1',
  direccion: 'Avenida Juanito 5444, Posadas - Misiones - Argentina',
  telefono: '+54 11 554464589',
);

final List<DireccionModel> lista = [];

class _Direcciones extends StatefulWidget {
  @override
  __DireccionesState createState() => __DireccionesState();
}

class __DireccionesState extends State<_Direcciones> {
  @override
  void initState() {
    lista.add(direccion1);
    lista.add(direccion2);
    print(lista);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    String value = 'Home';
    return Column(
      children: [
        Center(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              width: size.width * 0.95,
              height: size.height * 0.5,
              child: ListView.builder(
                itemCount: lista.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.all(5),
                    width: size.width,
                    height: size.height * 0.23,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                lista[index].titulo,
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),
                              ),
                            ),
                            Spacer(),
                            Radio(
                              fillColor: MaterialStateColor.resolveWith((states) => Colors.yellow),
                              value: lista[index].titulo,
                              groupValue: value,
                              onChanged: (value) {
                                setState(() {
                                  value = value;
                                });
                              },
                            )
                          ],
                        ),
                        Container(
                          width: size.width,
                          height: size.height * 0.15,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.all(5),
                                width: size.width * 0.9,
                                height: size.height * 0.08,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    lista[index].direccion,
                                    style: TextStyle(fontSize: 20),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                              Container(
                                width: size.width * 0.9,
                                height: size.height * 0.05,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    lista[index].telefono,
                                    style: TextStyle(fontSize: 18),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        _AgregarNuevaDire(),
        SizedBox(height: size.height * 0.14),
        _Ticket(),
        BotonProceddFinal()
      ],
    );
  }
}

class _Ticket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.08,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Amount Payable',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            '\$25.50',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ],
      ),
    );
  }
}

class _AgregarNuevaDire extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      width: size.width,
      height: size.height * 0.05,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Add a new location',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Spacer(),
          TextButton(
            onPressed: () {
              print('Agregar Ubicacion!');
            },
            child: FaIcon(
              FontAwesomeIcons.plus,
              size: 12,
              color: Color(0xff381764),
            ),
            style: TextButton.styleFrom(
              backgroundColor: Colors.yellow,
              minimumSize: Size(10, 10),
              shape: CircleBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
