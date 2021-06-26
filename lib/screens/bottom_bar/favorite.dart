import 'package:cityguide/constants/const.dart';
import 'package:cityguide/constants/styles_const.dart';
import 'package:cityguide/models/restaurant.dart';
import 'package:cityguide/screens/details_screen.dart';
import 'package:flutter/material.dart';

import '../favorite_screen.dart';

class Favorite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Favorite'),
        ),
        body: ListView.builder(
            itemCount: favRestaurant.length,
            itemBuilder: (context, index)
            => favRestaurant.isNotEmpty
                ?GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (ctx)=>DetailsScreen(
                  isFavorite: favRestaurant[index]['isFavorite'],
                  title: favRestaurant[index]['title'],
                  image: favRestaurant[index]['image'],
                  location: favRestaurant[index]['location'],
                  far: favRestaurant[index]['far'],
                  numfavorite: favRestaurant[index]['numFavorite'],
                  description: favRestaurant[index]['location'] * 10,
                )));
              },
              child: FavoriteCard(
                image: favRestaurant[index]['image'],
                numFavorite: favRestaurant[index]['numFavorite'],
                location: favRestaurant[index]['location'],
              ),
            ) :Center(
              child: Text(
                'Not Item Yet 🥺',
                style: TextStyle(
                  fontSize: 40.0,
                  color: primaryColor,
                  fontFamily: latoFontB
                ),
              ),
            )
        ));
  }
}
