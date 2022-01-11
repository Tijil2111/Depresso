import 'package:depresso/pages/home.dart';
import 'package:depresso/pages/home_screen.dart';
import 'package:depresso/pages/mood.dart';
import 'package:depresso/pages/wish_list_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
    home:  Home(),
    routes: {
      '/home':(context)=> Home(),
      '/wishlist': (context)=> WishListScreen(),
      '/mood':(context)=> MoodPage(),
    },
    
  ));
}
