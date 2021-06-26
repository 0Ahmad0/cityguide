import 'package:cityguide/constants/const.dart';
import 'package:cityguide/models/restaurant.dart';
import 'package:cityguide/screens/details_screen.dart';
import 'package:cityguide/widegits/list_restaurants.dart';
import 'package:flutter/material.dart';

class Restaurants extends StatefulWidget {
  @override
  _RestaurantsState createState() => _RestaurantsState();
}

class _RestaurantsState extends State<Restaurants> {
  int numFav;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurants'),
        centerTitle: true,
        actions: [IconButton(icon: Icon(Icons.search), onPressed: () {})],
      ),
      body: ListView.builder(
        itemCount: restaurants.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (ctx) => DetailsScreen(
                          isFavorite: restaurants[index].isFavorite,
                      title: restaurants[index].title,
                      image: restaurants[index].image,
                      location: restaurants[index].location,
                      numfavorite: restaurants[index].numFavorite,
                      far: restaurants[index].far,
                      description: restaurants[index].location * 12,
                        )));
          },
          child: ListResturent(
            isFav: restaurants[index].isFavorite,
            onPressed: () {
              setState(() {
                restaurants[index].isFavorite = !restaurants[index].isFavorite;
                restaurants[index].isFavorite
                ?favRestaurant.add(restaurantjson[index])
                :favRestaurant.removeAt(index);
              });
            },
            image: restaurants[index].image,
            title: restaurants[index].title,
            location: restaurants[index].location,
            far: restaurants[index].far,
            numfavorite: restaurants[index].isFavorite
                ? restaurants[index].numFavorite + 1
                : restaurants[index].numFavorite,
          ),
        ),
      ),
    );
  }
}
