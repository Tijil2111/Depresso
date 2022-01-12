// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, use_key_in_widget_constructors, unused_field

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child: ListView(
    padding: EdgeInsets.zero,
    children: [
      const DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.grey,
        ),
        child: Text('Depresso', style: TextStyle(fontSize: 20)),
      ),
      ListTile(
        title: const Text('Home'),
        onTap: () {
          Navigator.pushReplacementNamed(context, '/home');
        },
      ),
      ListTile(
        title: const Text('Get Started'),
        onTap: () {
          Navigator.pushReplacementNamed(context, '/mood');
        },
      ),
        ListTile(
        title: const Text('Calender'),
        onTap: () {
          Navigator.pushReplacementNamed(context, '/calender');
        },
      ),

    ],
  ),),
      appBar: AppBar(
        title: Text(
          'Depresso',
          style: GoogleFonts.pacifico(),
          ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 30,),
          Center(
            child: Text(
              'Welcome',
              style: GoogleFonts.pacifico(
                textStyle: const TextStyle(
                  fontSize: 30,
                  fontWeight:FontWeight.bold,
                  color: Colors.white
                )
              ),
              ),
          ),
          const SizedBox(
            height: 40,
          ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network('https://media.istockphoto.com/photos/my-life-is-such-a-mess-picture-id507801456')
            ),
          )
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              'Want to solve your emotional problems this app is the best ? We provide the art in state facility to solve your depression. Click on the button below to get started or use the side navigation bar to continue',
              style: GoogleFonts.pacifico(
                textStyle: TextStyle(fontSize: 20)
              )
            ),
          ),
        ),
        const SizedBox(height:30),
        RaisedButton(
          onPressed: (){
            Navigator.pushReplacementNamed(context, '/mood');
          },
          color: Colors.grey,
          child: Text(
            "Let's Go",
            style: GoogleFonts.pacifico(
              textStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            )
          )
        )
        ],
      ),
    );
  }
}