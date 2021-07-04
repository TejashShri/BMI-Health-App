import 'dart:math';
class CalculateBrain{
  CalculateBrain({this.height,this.weight});
  final int height;
  final int  weight;
  double bmi;
  String calculateBmi() {
    bmi=weight/ pow(height/100,2);
   return bmi.toStringAsFixed(1);
  }
  String getResult () {
    if(bmi>=25)
    {
      return 'OverWeight';
    }
    else if(bmi>18.5)
    {
      return 'Normal';
    }
    else
    {
      return 'Underweight';
    }
    }
    String getInterpretation() {
    if(bmi>=25)
    {
      return 'Try To Exercise daily';
    }
    else if(bmi>18.5)
    {
      return 'Good Job..';
    }
    else
    {
      return 'You Should Eat More Often';
    }  
    }
  }
