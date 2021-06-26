import 'package:cityguide/constants/const.dart';
import 'package:cityguide/constants/styles_const.dart';
import 'package:flutter/material.dart';

class BuildTextFiled extends StatelessWidget {
  final IconData icon;
  final String hintText;
  final bool obscure;
  final Function onChanged;
  final Function validator;

  const
  BuildTextFiled({
    Key key,
    this.icon,
    this.hintText = '',
    this.obscure = true, this.onChanged, this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      textInputAction: TextInputAction.next,
      onChanged: onChanged,
      validator: validator,
      obscureText: obscure ? true : false,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: hintTextStyle,
          prefixIcon: Icon(icon,color: grayColorNormal,)),
    );
  }
}
