import 'package:flutter/material.dart';

class InputContainer extends StatelessWidget {
  final String? lblText;
  final bool obscureText;
  final TextInputType? tipo;
  final bool forgot;
  final String pagForgot;
  final TextEditingController? controller;

  const InputContainer({this.lblText, this.obscureText = false, this.tipo, this.forgot = false, this.pagForgot = 'login', this.controller});
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(5),
      width: size.width * 0.85,
      height: size.height * 0.09,
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              controller: controller,
              keyboardType: tipo,
              obscureText: obscureText,
              decoration: InputDecoration(
                labelText: lblText,
                labelStyle: TextStyle(color: Colors.grey, fontSize: size.width * 0.04),
                contentPadding: EdgeInsets.zero,
                border: InputBorder.none,
              ),
            ),
          ),
          (forgot)
              ? Positioned(
                  top: size.width * 0.01,
                  right: size.width * 0.01,
                  child: Container(
                    width: size.width * 0.2,
                    height: size.height * 0.04,
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, pagForgot);
                      },
                      child: Text(
                        'Forgot?',
                        style: TextStyle(color: Color(0xff40206D), fontSize: size.width * 0.04, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
              : Container()
        ],
      ),
    );
  }
}
