import 'package:app_delivery/pages/boton_sesion.dart';
import 'package:app_delivery/widgets/inputs_login_registro.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff40206D),
        elevation: 0,
        title: Text(
          'SIGN IN',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        centerTitle: true,
        actions: [
          Container(
            padding: EdgeInsets.only(right: 10),
            child: Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'registro');
                },
                child: Text(
                  'SIGN UP',
                  style: TextStyle(color: Colors.yellow, fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ),
          )
        ],
      ),
      backgroundColor: Color(0xff40206D),
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(top: 60, child: Titulo()),
            Positioned(top: 170, child: Text('Sign in now', style: TextStyle(color: Colors.grey))),
            Positioned(top: 240, child: InputsBoton()),
            Positioned(top: size.height * 0.7, child: Text('Or Continue whit', style: TextStyle(color: Colors.grey))),
            Positioned(bottom: 0, child: _RedesSociales())
          ],
        ),
      ),
    );
  }
}

class _RedesSociales extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.98,
      height: size.height * 0.13,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _BotonRedSocial(
            icono: FontAwesomeIcons.facebookF,
            nombre: 'Facebook',
          ),
          _BotonRedSocial(
            icono: FontAwesomeIcons.google,
            nombre: 'Google',
          ),
        ],
      ),
    );
  }
}

class _BotonRedSocial extends StatelessWidget {
  final String nombre;
  final IconData icono;

  const _BotonRedSocial({this.nombre = '', this.icono = Icons.access_alarm});
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.42,
      height: size.height * 0.1,
      child: ElevatedButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FaIcon(
              icono,
              color: Colors.yellow,
              size: 20,
            ),
            Center(
              child: Text(
                nombre,
                style: TextStyle(fontSize: 20, color: Colors.yellow),
              ),
            )
          ],
        ),
        style: ElevatedButton.styleFrom(
          primary: Color(0xff40206D),
          side: BorderSide(width: 3, color: Colors.yellow),
          shape: RoundedRectangleBorder(
            //to set border radius to button
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}

class InputsBoton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9,
      height: size.height * 0.38,
      child: Column(
        children: [
          InputContainer(
            lblText: 'Email Address',
            tipo: TextInputType.emailAddress,
          ),
          InputContainer(
            lblText: 'Password',
            tipo: TextInputType.visiblePassword,
            obscureText: true,
            forgot: true,
            pagForgot: 'home',
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, 'home');
            },
            child: BotonSesion(
              titulo: 'SIGN IN',
            ),
          )
        ],
      ),
    );
  }
}

class Titulo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.7,
      height: size.height * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Food', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 40)),
          Text('Mart', style: TextStyle(color: Colors.yellow, fontSize: 40)),
        ],
      ),
    );
  }
}
