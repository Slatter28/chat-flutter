import 'dart:ui';

import 'package:chat/widget/btn_azul.dart';
import 'package:chat/widget/custom.input.dart';
import 'package:chat/widget/labels.dart';
import 'package:chat/widget/logo.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
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
                 Logo(name: 'Registro'),
                  _Form(),
                  Labels(ruta: 'login', msg1: '¿Ya tienes Cuenta?',msg2:'Ingresa ahora!'),
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
  final nameCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: <Widget>[
        CustomInput(
         icon: Icons.person,
         placeholder: 'Nombre',
         keyboardType: TextInputType.text,
         textcontroller: nameCtrl,
       ),

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

