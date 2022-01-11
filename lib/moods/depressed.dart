import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Depressed extends StatefulWidget {
  const Depressed({ Key? key }) : super(key: key);

  @override
  _DepressedState createState() => _DepressedState();
}

class _DepressedState extends State<Depressed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Depressed',
          style: GoogleFonts.pacifico(),
          ),
        centerTitle: true,
      ),
    );
  }
}