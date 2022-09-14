import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class CounterState{
  int _value = 1;
  

  void inc () => _value++;
  void dec () => _value--;
  int get value => _value;
}

class CounterProvider extends InheritedWidget {
  final CounterState state =  CounterState();

  CounterProvider({Key? key, required Widget child }): super (key: key, child:child);

  static CounterProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CounterProvider>();
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
}