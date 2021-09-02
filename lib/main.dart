import 'package:dashboard_challenge/simple_bloc_observer.dart';
import 'package:dashboard_challenge/views/views.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(App());
}

class App extends MaterialApp {
  App() : super(home: MainView(), debugShowCheckedModeBanner: false);
}
