import 'package:flutter/material.dart';
import 'home_screen.dart';

void main(){
  runApp(const GreetingApp());
}

class GreetingApp extends StatelessWidget {
  const GreetingApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}