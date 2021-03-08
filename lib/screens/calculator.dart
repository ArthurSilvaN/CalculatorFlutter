import 'package:exemple/models/memory.dart';
import 'package:flutter/material.dart';
import '../components/display.dart';
import '../components/keybord.dart';

class Calculator extends StatefulWidget {

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final Memory memory = Memory();

  _onPressed(String command){
    setState(() {
      memory.applyCommand(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: <Widget>[
          Display(memory.value),
          Keybord(_onPressed),
        ],
      ),
    );
  }
}