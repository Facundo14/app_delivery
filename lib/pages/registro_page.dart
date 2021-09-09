import 'package:app_delivery/pages/boton_sesion.dart';
import 'package:app_delivery/widgets/inputs_login_registro.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegistroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff40206D),
        elevation: 0,
        title: Text(
          'SIGN UP',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.keyboard_arrow_left,
            size: 30,
          ),
        ),
      ),
      backgroundColor: Color(0xff40206D),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          width: size.width,
          height: size.height * 0.9,
          child: Column(
            children: [
              _PicImage(),
              InputContainer(
                lblText: 'Full Name',
                tipo: TextInputType.name,
              ),
              InputContainer(
                lblText: 'Email Address',
                tipo: TextInputType.emailAddress,
              ),
              InputContainer(
                lblText: 'Phone Number',
                tipo: TextInputType.phone,
              ),
              InputContainer(
                lblText: 'Create Password',
                tipo: TextInputType.visiblePassword,
                obscureText: true,
              ),
              InputContainer(
                lblText: 'Confirm Password',
                tipo: TextInputType.visiblePassword,
                obscureText: true,
              ),
              BotonSesion(
                titulo: 'SIGN UP',
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _PicImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(5),
      width: size.width * 0.85,
      height: size.height * 0.13,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: size.width * 0.3,
            height: size.height * 0.12,
            decoration: BoxDecoration(
              color: Colors.pink,
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/profile/prof1.jpg'),
              ),
            ),
          ),
          Container(
            width: size.width * 0.1,
            height: size.height * 0.05,
            decoration: BoxDecoration(
              color: Colors.yellow,
              shape: BoxShape.circle,
            ),
            child: Center(
                child: FaIcon(
              FontAwesomeIcons.camera,
              color: Color(0xff40206D),
            )),
          ),
          Container(
            width: size.width * 0.4,
            height: size.height * 0.05,
            child: Center(
              child: Text('Add profile picture', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 17)),
            ),
          ),
        ],
      ),
    );
  }
}
