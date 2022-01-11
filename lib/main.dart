import 'package:depresso/moods/angry.dart';
import 'package:depresso/moods/calm.dart';
import 'package:depresso/moods/depressed.dart';
import 'package:depresso/moods/sad.dart';
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
      '/sad': (context)=> Sad(),
      '/angry':(context)=> Angry(),
      '/depressed':(context)=> Depressed(),
      '/calm':(context)=> Calm(),
    },
    
  ));
}
