import 'package:cityguide/constants/styles_const.dart';
import 'package:flutter/material.dart';

class OnbordingItems extends StatelessWidget {
  final String image;
  final String cityName;
  final String description;

  const OnbordingItems({Key key, this.image, this.cityName, this.description}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                     image,
                    ))),
          ),
          SizedBox(height: 15.0,),
          Text(
           cityName,
            style: loginTextStyle,
          ),
          SizedBox(height: 35.0,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: Text(
             description,
              textAlign: TextAlign.center,
              style: onBordingTextStyle,
            ),
          ),
          SizedBox(height: 20.0,),
        ],
      ),
    );
  }
}
