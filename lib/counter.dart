import 'package:flutter/material.dart';

class Counter extends ChangeNotifier {
  int _counter;
  Counter(this._counter);

  int get counter => _counter;

  void artirma() {
    _counter++;
    notifyListeners();
  }

  void azaltma() {
    _counter--;
    notifyListeners();
  }
}
