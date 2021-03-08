import 'package:flutter/material.dart';
import 'button.dart';
import 'Button_row.dart';


class Keybord extends StatelessWidget {

  final void Function(String) callBack;

  Keybord(this.callBack);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: <Widget>[
          ButtonRow([
            Button.big(text: 'AC', color: Button.DARK, callBack: callBack),
            Button(text: '%', color: Button.DARK,callBack: callBack),
            Button.Operation(text: '÷', callBack: callBack),
          ]),
          SizedBox(height: 1),
          ButtonRow([
            Button(text: '7', callBack: callBack),
            Button(text: '8', callBack: callBack),
            Button(text: '9', callBack: callBack),
            Button.Operation(text: '×', callBack: callBack),
          ]),
          SizedBox(height: 1),
          ButtonRow([
            Button(text: '4', callBack: callBack),
            Button(text: '5', callBack: callBack),
            Button(text: '6', callBack: callBack),
            Button.Operation(text: '-', callBack: callBack),
          ]),
          SizedBox(height: 1),
          ButtonRow([
            Button(text: '1', callBack: callBack),
            Button(text: '2', callBack: callBack),
            Button(text: '3', callBack: callBack),
            Button.Operation(text: '+', callBack: callBack),
          ]),
          SizedBox(height: 1),
          ButtonRow([
            Button.big(text: '0',callBack: callBack),
            Button(text: ',', callBack: callBack),
            Button.Operation(text: '=', callBack: callBack),
          ])
        ],
      ),
    );
  }
}
