import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Icon_content.dart';
import 'Reuseable_content.dart';
import 'constant.dart';
import 'Bottom.dart';
import 'CalculateBrain.dart';
import 'end_Page.dart';
class InputPage extends StatefulWidget {

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color malecard = inactivecolor;
  Color femalecard = inactivecolor;
   void updateColor(int gender)
   {
     if(gender==1)
     {
       if(malecard==inactivecolor)
       {
         
         malecard = activecolor;
         femalecard=inactivecolor;
       }
     else{
       malecard = inactivecolor;
     }
     }
     else if(gender==2){
       if(femalecard==inactivecolor)
       {
         femalecard=activecolor;
         malecard=inactivecolor;
       }
       else{
         femalecard=inactivecolor;
       }
     }
   }
   int height=180;
   int weight=60;
   int age=30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Center(child: Text('BMI CALCULATOR App')),
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
        Expanded(
            child:Row(
              children: <Widget>[
                Expanded(
                child: Reusable(
                onpress: () {
                      setState(() {
                        updateColor(1);
                      });
                    },
                colour:malecard,
                cardwidget: Iconwidget(
                  textt: 'Male',
                  icon: FontAwesomeIcons.male,
                ),
                  ),
                ),
                Expanded(
                  child: new Reusable(
                    onpress: () {
                      setState(() {
                        updateColor(2);
                      });
                    },
                  colour:femalecard,
                  cardwidget: new Iconwidget(
                    textt: 'Female',
                    icon: FontAwesomeIcons.female,
                  ),
                  ),
                ),
              ],
            )
        
      ),
        Expanded(
            child: new Reusable(
              colour:activecolor,
              cardwidget:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget> [
                  Text('HEIGHT',
                  style: labelText
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline:TextBaseline.alphabetic,
                children:<Widget> [
                  Text(
                    height.toString(),
                    style: contentText
                  ),
                  Text(' cm',
                  style: labelText
                  ),
                ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape:
                      RoundSliderThumbShape(enabledThumbRadius:16.0),
                      overlayShape:
                       RoundSliderOverlayShape(overlayRadius: 30.0)
                    ),
                      child: Slider(
                      value:height.toDouble(),
                      min: 120,
                      max: 220,
                      activeColor: Color(0xFFEB1555),
                      inactiveColor:Color(0xFF8D8E98),
                      onChanged: (double newValue) {
                        setState(() {
                          height=newValue.round();
                        });
                      },
                    ),
                  ),
                ]
              ),
            ),
        ),
        Expanded(
            child:Row(
              children: <Widget>[
                Expanded(
                child: new Reusable(
                  colour:activecolor,
                  cardwidget: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:<Widget>[
                      Text('WEIGHT',
                      style: labelText),
                      Text(weight.toString(),
                      style: contentText),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                        RoundIconButton(
                          icon: FontAwesomeIcons.minus,
                          onPress:() {
                            setState(() {
                              weight--;
                            });
                          },
                        ),
                        SizedBox(width:10.0),
                        RoundIconButton(
                          icon: FontAwesomeIcons.plus,
                          onPress: () {
                            setState(() {
                              weight++;
                            });
                          },
                        ),
                        ],
                      ),
                    ],
                  ),  
                ),
                ),
                Expanded(
                child: new Reusable(
                  colour:activecolor,
                  cardwidget: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:<Widget>[
                      Text('AGE',
                      style: labelText),
                      Text(age.toString(),
                      style:contentText),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                         RoundIconButton(
                          icon: FontAwesomeIcons.minus,
                          onPress:() {
                            setState(() {
                              age--;
                            });
                          },
                        ),
                        SizedBox(width:10.0),
                        RoundIconButton(
                          icon: FontAwesomeIcons.plus,
                          onPress: () {
                            setState(() {
                              age++;
                            });
                          },
                        ), 
                      ],),
                    ]
                  ),
                ),
                ),
              ],
            ),
      ),
        Bottom(
          bottomTitle:'Calculate',
          ontap: () {
            CalculateBrain calc = CalculateBrain(height: height,weight: weight);

            Navigator.push(context,MaterialPageRoute(
              builder: (context)=>EndPage(
                bmiResult:calc.calculateBmi() ,
                bmiInter:calc.getInterpretation() ,
                bmitext: calc.getResult(),
              ),
              ),
              );
          }
        ),
      ],)
    );
  }
}


class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon,this.onPress});
  final IconData icon;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child:Icon(icon) ,
      onPressed:onPress,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0
      ),
      shape: CircleBorder(),
      fillColor: Colors.teal,
    );
  }
}