import 'package:cityguide/constants/const.dart';
import 'package:cityguide/constants/styles_const.dart';
import 'package:cityguide/widegits/list_restaurants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final bool isFavorite;
  final String title, image , location,description;
  final int numfavorite , far;

  const DetailsScreen({Key key, this.isFavorite, this.title, this.image, this.location, this.numfavorite, this.far, this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        actions: [
          IconButton(icon: Icon(
            isFavorite?
                Icons.favorite:Icons.favorite_outline
          ), onPressed: (){})
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
              left: 20.0,
              bottom: 15.0
            ),
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(image),
              )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            fontSize: 30.0,
                            fontFamily: latoFontB,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 22.0,
                              color: Colors.white,
                            ),
                            Text(
                              '${far}',
                              style: TextStyle(
                                fontSize: 22.0,
                                fontFamily: latoFontN,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '${location}',
                              style: TextStyle(
                                fontSize: 22.0,
                                fontFamily: latoFontN,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Icon(
                              Icons.favorite,
                              color: Colors.white,
                              size: 22.0,
                            ),
                            SizedBox(
                              width: 1.0,
                            ),
                            Text(
                              '${numfavorite}',
                              style: TextStyle(
                                fontSize: 22.0,
                                fontFamily: latoFontN,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(
                height: 2.0,
                fontFamily: latoFontN,
                color: grayColorNormal,
                fontSize:  18.0,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 70,
            color: primaryColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(Icons.phone_android_outlined,color: Colors.white,),
                    Text('+1 212 535 1666',style: TextStyle(
                      fontFamily: latoFontN,
                      color: Colors.white
                    ),)
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.email_outlined,color: Colors.white,),
                    Text('contact@bluehill.com',style: TextStyle(
                        fontFamily: latoFontN,
                        color: Colors.white
                    ),)
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/Place info.png')
                )
              ),
            ),
          )
        ],
      ),
    );
  }
}
