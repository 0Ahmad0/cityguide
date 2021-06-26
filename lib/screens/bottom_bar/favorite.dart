import 'package:cityguide/models/restaurant.dart';
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
            itemCount: restaurants.length,
            itemBuilder: (context, index) => restaurants[index].isFavorite
                ? FavoriteCard(
                    image: restaurants[index].image,
                    numFavorite: restaurants[index].numFavorite,
                    location: restaurants[index].location,
                  )
                : null));
  }
}
