import 'package:flutter/material.dart';
import 'constant.dart';
class Iconwidget extends StatelessWidget {
 Iconwidget({this.textt,this.icon});
 final String textt;
 final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:<Widget>[
       Icon(
            icon,
            size:80,
            color: Colors.teal,
            ),
            SizedBox(
              height: 15.0,
            ),
          Text(textt,
          style: labelText,
          ), 
      ],
    );
  }
}
