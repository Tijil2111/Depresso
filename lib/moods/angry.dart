import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Angry extends StatefulWidget {
  const Angry({ Key? key }) : super(key: key);

  @override
  _AngryState createState() => _AngryState();
}

class _AngryState extends State<Angry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Angry',
          style: GoogleFonts.pacifico(),
          ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 30,) 
          ],
        ),
      ),
    );
  }
}