import 'package:flutter/material.dart';
class Reusable extends StatelessWidget {
  Reusable({this.colour,this.cardwidget,this.onpress});
  final Color colour;
  final Widget cardwidget;
  final Function onpress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
          onTap: () {
            onpress();
          },
          child: Container(
            child: cardwidget,
            margin:EdgeInsets.all(15.0),
            decoration:BoxDecoration(
              color:colour,
              borderRadius:BorderRadius.circular(10.0)
            )
          ),
    );
  }
}
    