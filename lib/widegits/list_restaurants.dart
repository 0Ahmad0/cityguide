import 'package:cityguide/constants/const.dart';
import 'package:cityguide/constants/styles_const.dart';
import 'package:cityguide/models/restaurant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const subTitle = TextStyle(
  fontSize: 12.0,
  fontFamily: latoFontN,
  color: grayColorNormal,
);

class ListResturent extends StatelessWidget {
  final bool isFav;
  final Function onPressed;
  final String image, title, location;
  final int far, numfavorite;

  const ListResturent({
    Key key,
    this.isFav = false,
    this.onPressed,
    @required this.image,
    @required this.title,
    @required this.location,
    @required this.far,
    @required this.numfavorite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 25.0,
        vertical: 10.0,
      ),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: grayColorNormal.withOpacity(.3)))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(image))),
              ),
              SizedBox(
                width: 5.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: latoFontN,
                      color: grayColorBold,
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 20.0,
                        color: grayColorNormal,
                      ),
                      Text(
                        '${far}',
                        style: subTitle,
                      ),
                      Text(
                        '${location}',
                        style: subTitle,
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      InkWell(
                        onTap: onPressed,
                        child: Icon(
                          Icons.favorite,
                          color: isFav ? Colors.red : grayColorNormal,
                          size: 20.0,
                        ),
                      ),
                      SizedBox(
                        width: 1.0,
                      ),
                      Text(
                        '${numfavorite}',
                        style: subTitle,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: primaryColor,
            size: 20.0,
          )
        ],
      ),
    );
  }
}
