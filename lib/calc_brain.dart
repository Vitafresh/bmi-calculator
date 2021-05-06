import 'dart:math';

class CalcBrain{
  CalcBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calcBMI(){
    _bmi=weight/pow((height/100),2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi>=30){
      return 'Жиробасина';
    } else if(_bmi>25){
      return 'Жирчик';
    }else if(_bmi>=18.5){
      return 'Нормас';
    } else if(_bmi<18.5){
      return 'Скелетон';
    } else {
      return 'Ветром унесет!';
    }
  }

  String getInterpretation(){
    if(_bmi>=30){
      return 'Жиробасина, срочно нужно меньше жрать и больше бегать!';
    } else if(_bmi>25){
      return 'Жирчик - можно и по-меньше хавать, а двигаться по-больше';
    }else if(_bmi>=18.5){
      return 'Нормас - так держать, всё в полном порядке!';
    } else if(_bmi<18.5){
      return 'Скелетон - смотри, чтобы кости не рассыпались!';
    } else {
      return 'Ветром унесет - положи в карман монетки!';
    }
  }
}