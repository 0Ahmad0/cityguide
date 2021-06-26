import 'package:cityguide/screens/culture.dart';
import 'package:cityguide/screens/hotels.dart';
import 'package:cityguide/screens/nightlife.dart';
import 'package:cityguide/screens/popular.dart';
import 'package:cityguide/screens/restaurants.dart';
import 'package:cityguide/screens/shopping.dart';
import 'package:flutter/material.dart';

const primaryColor = Color(0xff2196f3);
const grayColorNormal = Color(0xffb6b6b6);
const grayColorBold = Color(0xff727272);

List<Widget> screens = [
  Restaurants(),
  Hotels(),
  Nightlife(),
  Shopping(),
  Culture(),
  Popular(),
];


List favRestaurant =[];

