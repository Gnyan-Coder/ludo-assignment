import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'dart:math';

class MyModel with ChangeNotifier{
  int dice=1;
  void rollDice(){
    dice = Random().nextInt(6) + 1;
    notifyListeners();
  }

}