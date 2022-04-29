import 'dart:ui';

import 'package:chat/widget/btn_azul.dart';
import 'package:chat/widget/custom.input.dart';
import 'package:chat/widget/labels.dart';
import 'package:chat/widget/logo.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF2F2F2),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                 Logo(name: 'Login'),
                  _Form(),
                  Labels(ruta: 'register' , msg1: '¿No tienes Cuenta?',msg2:'Crea una ahora!',),
                  Text('Terminos y condiciones de uso',
                      style: TextStyle(fontWeight: FontWeight.w200)),
                ],
              ),
            ),
          ),
        ));
  }
}

class _Form extends StatefulWidget {
  @override
  State<_Form> createState() => __FormState();
}

class __FormState extends State<_Form> {

  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: <Widget>[

       CustomInput(
         icon: Icons.mail_outline,
         placeholder: 'Correo',
         keyboardType: TextInputType.emailAddress,
         textcontroller: emailCtrl,
       ),

       CustomInput(
         icon: Icons.lock_outline,
         placeholder: 'Contraseña',
         textcontroller: passCtrl,
         isPassword: true,
       ),
        Button(
          text: 'Ingrese',
          onPressed: (){
            print(emailCtrl.text);
        },
        )
      ]),
    );
  }
}

