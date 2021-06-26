import 'package:cityguide/constants/styles_const.dart';
import 'package:flutter/material.dart';

class FavoriteCard extends StatelessWidget {
  final String image, location;
  final int numFavorite;

  const FavoriteCard({Key key, this.image, this.numFavorite, this.location}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12.0),
      width: double.infinity,
     height: 200,
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(15.0),
       image: DecorationImage(
         fit: BoxFit.cover,
         image: AssetImage(image),
       )
     ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(15.0),
                  bottomLeft: Radius.circular(15.0),
                ),
                color: Colors.black38
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Text('${numFavorite}',style: TextStyle(fontSize: 18.0,fontFamily: latoFontB,color: Colors.white),),
                    Icon(Icons.favorite , color: Colors.white,),
                  ],
                ),
                Container(
                  width: 2,
                  height: 30,
                  color: Colors.white,
                ),
                Row(
                  children: [
                    Text(location,style: TextStyle(fontSize: 18.0,fontFamily: latoFontB,color: Colors.white)),
                    Icon(Icons.location_on , color: Colors.white,),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
