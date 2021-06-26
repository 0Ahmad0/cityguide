import 'package:cityguide/constants/const.dart';
import 'package:cityguide/constants/styles_const.dart';
import 'package:flutter/material.dart';

class BuildButton extends StatelessWidget {
  final Color color;
  final String text;
  final Color textColor;
  final Color border;
  final Function onPressed;

  const BuildButton({
    Key key,
    this.color = primaryColor,
    this.text = '',
    this.border = Colors.transparent,
    this.onPressed, this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
      decoration: BoxDecoration(
        border: Border.all(color: border),
        borderRadius: BorderRadius.circular(8.0),
        color: color
      ),
      child: FlatButton(
        minWidth: double.infinity,
        textColor: textColor,
        height: 60.0,
        onPressed: onPressed,
        child: Text(text,style: textButtonStyle,),
      ),
    );
  }
}
