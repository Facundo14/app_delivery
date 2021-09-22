import 'package:animate_do/animate_do.dart';
import 'package:app_delivery/widgets/boton_sesion.dart';
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
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: size.width * 0.06),
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.keyboard_arrow_left,
            size: size.width * 0.08,
          ),
        ),
      ),
      backgroundColor: Color(0xff40206D),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          width: size.width,
          height: size.height,
          child: Column(
            children: [
              _PicImage(),
              _Form(),
            ],
          ),
        ),
      ),
    );
  }
}

class _Form extends StatefulWidget {
  @override
  State<_Form> createState() => _FormState();
}

final TextEditingController txtNombre = new TextEditingController();
final TextEditingController txtEmail = new TextEditingController();
final TextEditingController txtTelefono = new TextEditingController();
final TextEditingController txtPass = new TextEditingController();

class _FormState extends State<_Form> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          FadeInLeft(
            duration: Duration(milliseconds: 500),
            child: InputContainer(
              lblText: 'Full Name',
              tipo: TextInputType.name,
              controller: txtNombre,
            ),
          ),
          FadeInLeft(
            duration: Duration(milliseconds: 600),
            child: InputContainer(
              lblText: 'Email Address',
              tipo: TextInputType.emailAddress,
              controller: txtEmail,
            ),
          ),
          FadeInLeft(
            duration: Duration(milliseconds: 700),
            child: InputContainer(
              lblText: 'Phone Number',
              tipo: TextInputType.phone,
              controller: txtTelefono,
            ),
          ),
          FadeInLeft(
            duration: Duration(milliseconds: 800),
            child: InputContainer(
              lblText: 'Create Password',
              tipo: TextInputType.visiblePassword,
              obscureText: true,
              controller: txtPass,
            ),
          ),
          FadeInLeft(
            duration: Duration(milliseconds: 900),
            child: InputContainer(
              lblText: 'Confirm Password',
              tipo: TextInputType.visiblePassword,
              obscureText: true,
              controller: txtPass,
            ),
          ),
          FadeIn(
            duration: Duration(milliseconds: 500),
            child: BotonSesion(
              titulo: 'SIGN UP',
            ),
          )
        ],
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
          BounceInRight(
            child: Container(
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
              size: size.width * 0.045,
            )),
          ),
          Container(
            width: size.width * 0.4,
            height: size.height * 0.05,
            child: Center(
              child: Text('Add profile picture',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: size.width * 0.045)),
            ),
          ),
        ],
      ),
    );
  }
}
