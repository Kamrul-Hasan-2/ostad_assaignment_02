import 'package:flutter/material.dart';

import 'home_screen.dart';


void main(){
  runApp(GreetingApp());
}

class GreetingApp extends StatelessWidget {
  const GreetingApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}