import 'package:animate_do/animate_do.dart';
import 'package:app_delivery/widgets/boton_procedd.dart';
import 'package:flutter/material.dart';

class MetodosPago {
  final String descripcion;
  final String imagen;

  MetodosPago({this.descripcion = '', this.imagen = 'assets/mpago/no-image.png'});
}

MetodosPago metodo1 = new MetodosPago(descripcion: 'PayPal');
MetodosPago metodo2 = new MetodosPago(descripcion: 'Mercado Pago');
MetodosPago metodo3 = new MetodosPago(descripcion: 'Credit Card');
MetodosPago metodo4 = new MetodosPago(descripcion: 'Credit on Delivery');

List<MetodosPago> listado = [];

class MetodosPagosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('SELECT PAYMENT METHODS', style: TextStyle(fontSize: 18)),
        backgroundColor: Color(0xff381764),
        elevation: 0,
        leading: Icon(Icons.chevron_left, color: Colors.white, size: 35),
      ),
      backgroundColor: Color(0xff381764),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              width: size.width,
              height: size.height * 0.6,
              child: _Listado(),
            ),
          ),
          Positioned(
              bottom: 0,
              child: Column(
                children: [
                  _Ticket(),
                  BotonProceddFinal(),
                ],
              )),
        ],
      ),
    );
  }
}

class _Listado extends StatefulWidget {
  @override
  __ListadoState createState() => __ListadoState();
}

class __ListadoState extends State<_Listado> {
  @override
  void initState() {
    listado.add(metodo1);
    listado.add(metodo2);
    listado.add(metodo3);
    listado.add(metodo4);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: listado.length,
      itemBuilder: (BuildContext context, int index) {
        return FadeInRight(
          duration: Duration(milliseconds: 400),
          child: Container(
            width: size.width,
            height: size.height * 0.1,
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Row(
              children: [
                Container(
                  width: size.width * 0.25,
                  height: size.height * 0.1,
                  child: Center(
                    child: Image.asset(listado[index].imagen),
                  ),
                ),
                Container(
                  child: Center(
                    child: Text(
                      listado[index].descripcion,
                      style: TextStyle(fontSize: 21),
                    ),
                  ),
                ),
                Spacer(),
                Radio(value: listado[index].descripcion, groupValue: listado[index].descripcion, onChanged: (value) {})
              ],
            ),
          ),
        );
      },
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
