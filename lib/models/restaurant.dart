import 'package:flutter/cupertino.dart';

class Restaurants {
  String image;
  String title;
  int far, numFavorite;
  String location;
  bool isFavorite;

  Restaurants({
    @required this.image,
    @required this.title,
    @required this.location,
    @required this.far,
    @required this.numFavorite,
    this.isFavorite = false
  });
}

List<Restaurants> restaurants = [
  Restaurants(
    image: 'assets/images/Gramercy Travern.png',
    title: 'Gramercy Travern',
    location: ' E 20th St',
    far: 42,
    numFavorite: 228,
    isFavorite: false
  ),
  Restaurants(
    image: 'assets/images/blue Hill.png',
    title: 'Blue Hill',
    location: ' Washington Pl',
    far: 75,
    numFavorite: 215,
      isFavorite: false

  ),
  Restaurants(
    image: 'assets/images/le Bernadin.png',
    title: 'Le Bernadin',
    location: ' W 51st St',
    far: 155,
    numFavorite: 199,
      isFavorite: false

  ),
  Restaurants(
    image: 'assets/images/jean Georges.png',
    title: 'Jean-Georges',
    location: ' Central Park West',
    far: 1,
    numFavorite: 183,
      isFavorite: false

  ),
  Restaurants(
    image: 'assets/images/the Four Seasons.png',
    title: 'The Four Seasons',
    location: ' E 52nd St',
    far: 99,
    numFavorite: 178,
      isFavorite: false

  ),
  Restaurants(
    image: 'assets/images/ninga New York.png',
    title: 'Ninga New York',
    location: ' Hudson St',
    far: 25,
    numFavorite: 78,
      isFavorite: false

  ),
  Restaurants(
    image: 'assets/images/estiatorio Milos.png',
    title: 'Estiatorio Milos',
    location: 'Pobo FR',
    far: 10,
    numFavorite: 25,
      isFavorite: false
  ),
];
