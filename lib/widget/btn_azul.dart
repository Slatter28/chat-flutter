import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final   String text;
  final Function() onPressed;
  const Button({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 2,
      highlightElevation: 5,
      color: Colors.blue[400],
      shape: StadiumBorder(),
      onPressed: this.onPressed,
      child: Container(
        width: double.infinity,
        height: 55,
        child: Center(child: Text(this.text,style: TextStyle(color: Colors.white,fontSize: 17))),
      ),
    );
  }
}
