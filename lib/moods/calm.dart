import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Calm extends StatefulWidget {
  const Calm({ Key? key }) : super(key: key);

  @override
  _CalmState createState() => _CalmState();
}

class _CalmState extends State<Calm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calm',
          style: GoogleFonts.pacifico(),
          ),
        centerTitle: true,
      ),
    );
  }
}