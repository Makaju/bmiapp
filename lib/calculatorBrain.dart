import 'dart:math';
import 'package:flutter/material.dart';
class CalculatorBrain{
  CalculatorBrain({required this.height,required this.weight});


  final int height;
  final int weight;
  late double _bmi;

  String calculateBmi(){
    _bmi = weight/pow(height/100,2);
    print(_bmi.toStringAsFixed(1));
    return _bmi.toStringAsFixed(1);
  }
  String getResult(){
   if(_bmi >24.9){
     return 'Overweight';
   }
   else if(_bmi>18.5){
     return 'Normal';
   }
   else{
     return'Under Weight';
   }
  }

  String getInterpretation(){
    if(_bmi<18.5){
      return 'You Need to eat more, you are very thin';
    }
    else if(_bmi<24.9){
      return 'Keep up the good work and maintain your body';
    }
    else if(_bmi>24.9){
      return 'Eat less and exercise more';
    }
    return '';

  }





}