import 'package:flutter/material.dart';
import 'package:tic_tac_toe/screens/player.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tic Tac Toe',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PlayerName(), // Start with the NameInputScreen
    );
  }
}
