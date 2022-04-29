import 'package:flutter/material.dart';

class Labels extends StatelessWidget {

  final String ruta;
  final String msg1;
  final String msg2;

  const Labels({Key? key, required this.ruta, required this.msg1, required this.msg2}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(this.msg1,
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 15,
                  fontWeight: FontWeight.w300)),
          SizedBox(height: 10),
          GestureDetector(
            child: Text(this.msg2,
                style: TextStyle(
                    color: Colors.blue[600],
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
                    onTap: (){
                      Navigator.pushReplacementNamed(context,this.ruta);
                    },
          ),
        ],
      ),
    );
  }
}
