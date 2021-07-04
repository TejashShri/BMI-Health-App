import 'package:flutter/material.dart';
import 'constant.dart';
import 'Bottom.dart';
import 'Reuseable_content.dart';

class EndPage extends StatelessWidget {
  EndPage({@required this.bmiInter,@required this.bmiResult,@required this.bmitext});
  final String bmiResult;
  final String bmitext;
  final String bmiInter;
 @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title:Text('RESULT PAGE'),
     ), 
     body: SafeArea(
       child:Column(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: <Widget>[
           Expanded(
              child: Container(
              margin: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0,20.0),
              child:Text('YOUR RESULT',
       style: contentText
       ), 
       ),
           ),
       Expanded(
         flex: 5,
            child:Reusable(
              colour: activecolor,
              cardwidget: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:<Widget>[
                  Text(bmitext,
                  style:labelText
                  ),
                  Text(bmiResult,
                  style: contentText
                  ),
                  Text(bmiInter,
                  textAlign: TextAlign.center,
                  style:TextStyle(
                    fontSize:30.0
                  ))
                ]
              ),
            )
         ),
         Bottom(
          bottomTitle:'RE-Calculate',
          ontap: () {
            Navigator.pop(context);
          }
         ),
         ],
    ),
     ),
    );
  }
}