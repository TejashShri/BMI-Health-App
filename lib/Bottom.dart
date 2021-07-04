import 'package:flutter/material.dart';
import 'constant.dart';
class Bottom extends StatelessWidget {
  Bottom({this.bottomTitle,this.ontap});
  final String bottomTitle;
  final Function ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap:ontap,
          child: Container(
      color: Colors.pink,
      height: bottomBarHeight,
      width: double.infinity,
      margin: EdgeInsets.only(top:10),
      child:Center(
        child: Text(bottomTitle,
        style: TextStyle(
          fontSize:40.0,
        ),),
      ),
    ),
      );
  }
}
