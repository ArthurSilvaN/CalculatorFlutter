import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const DARK = Colors.white70;
  static const DEFAULT = Colors.white;
  static const OPERATION = Color.fromRGBO(100, 125, 238, 1.0);

  final String text;
  final bool big;
  final Color color;
  final void Function(String) callBack;

  Button({
    @required this.callBack,
    @required this.text,
    this.big = false,
    this.color = DEFAULT,
  });
  Button.big({
    @required this.callBack,
    @required this.text,
    this.big = true,
    this.color = DEFAULT,
  });
  Button.Operation({
    @required this.callBack,
    @required this.text,
    this.big = false,
    this.color = OPERATION,
  });
  Button.Dark({
    @required this.callBack,
    @required this.text,
    this.big = false,
    this.color = DARK,
  });


  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: RaisedButton(
        color: this.color,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.black38,
            fontSize: 32,
            fontWeight: FontWeight.w500,
          ),
        ),
        onPressed: () => callBack(text),
      ),
    );
  }
}
