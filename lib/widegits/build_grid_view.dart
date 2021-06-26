import 'package:cityguide/constants/const.dart';
import 'package:cityguide/constants/styles_const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuildGridView extends StatelessWidget {
  final String image , text;

  const BuildGridView({Key key, this.image, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.0),
        border: Border.all(color: grayColorNormal.withOpacity(0.2))
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image,width: 45,height: 50,),
          SizedBox(height: 10.0,),
          Text(text,
            textAlign: TextAlign.center,
            style: TextStyle(
            fontFamily: latoFontN,
            color: Colors.black.withOpacity(.6),
            fontSize: 18.0
          ),)
        ],
      ),
    );
  }
}
