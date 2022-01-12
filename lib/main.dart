// ignore_for_file: prefer_const_constructors

import 'package:depresso/moods/angry.dart';
import 'package:depresso/moods/calm.dart';
import 'package:depresso/moods/depressed.dart';
import 'package:depresso/moods/sad.dart';
import 'package:depresso/pages/home_screen.dart';
import 'package:depresso/pages/meditation.dart';
import 'package:depresso/pages/mood.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
    home:  Home(),
    routes: {
      '/home':(context)=> Home(),
      '/mood':(context)=> MoodPage(),
      '/sad': (context)=> Sad(),
      '/angry':(context)=> Angry(),
      '/depressed':(context)=> Depressed(),
      '/calm':(context)=> Calm(),
      '/meditate':(context)=> MeditationPage(),
    },
    
  ));
}
