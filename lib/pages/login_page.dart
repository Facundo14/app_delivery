import 'package:animate_do/animate_do.dart';
import 'package:app_delivery/widgets/boton_sesion.dart';
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
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: size.height * 0.025),
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
                  style: TextStyle(color: Colors.yellow, fontWeight: FontWeight.bold, fontSize: size.height * 0.025),
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
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(height: size.height * 0.05),
              Titulo(),
              SizedBox(height: size.height * 0.05),
              Text('Sign in now', style: TextStyle(color: Colors.grey, fontSize: size.height * 0.02)),
              SizedBox(height: size.height * 0.02),
              InputsBoton(),
              SizedBox(height: size.height * 0.05),
              Text('Or Continue whit', style: TextStyle(color: Colors.grey, fontSize: size.height * 0.02)),
              SizedBox(height: size.height * 0.03),
              _RedesSociales(),
            ],
          ),
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
              size: size.width * 0.056,
            ),
            Center(
              child: Text(
                nombre,
                style: TextStyle(fontSize: size.width * 0.056, color: Colors.yellow),
              ),
            )
          ],
        ),
        style: ElevatedButton.styleFrom(
          primary: Color(0xff40206D),
          side: BorderSide(width: size.width * 0.002, color: Colors.yellow),
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
          FadeIn(
            delay: Duration(milliseconds: 400),
            child: InputContainer(
              lblText: 'Email Address',
              tipo: TextInputType.emailAddress,
            ),
          ),
          FadeIn(
            duration: Duration(milliseconds: 600),
            child: InputContainer(
              lblText: 'Password',
              tipo: TextInputType.visiblePassword,
              obscureText: true,
              forgot: true,
              pagForgot: 'home',
            ),
          ),
          FadeIn(
            duration: Duration(milliseconds: 800),
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, 'home');
              },
              child: BotonSesion(
                titulo: 'SIGN IN',
              ),
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
          FadeInLeft(
            child: Text('Food', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: size.width * 0.1)),
          ),
          FadeInRight(
            child: Text('Mart', style: TextStyle(color: Colors.yellow, fontSize: size.width * 0.1)),
          ),
        ],
      ),
    );
  }
}
