import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sad extends StatefulWidget {
  const Sad({ Key? key }) : super(key: key);

  @override
  _SadState createState() => _SadState();
}

class _SadState extends State<Sad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sads',
          style: GoogleFonts.pacifico(),
          ),
        centerTitle: true,
      ),
    );
  }
}