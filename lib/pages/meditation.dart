// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';

class MeditationPage extends StatefulWidget {
  const MeditationPage({ Key? key }) : super(key: key);

  @override
  _MeditationPageState createState() => _MeditationPageState();
}

class _MeditationPageState extends State<MeditationPage> {
  late AudioPlayer player;

  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }
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
        title: const Text('Meditation'),
        onTap: () {
          Navigator.pushReplacementNamed(context, '/meditate');
        },
      ),

    ],
  ),),
      appBar: AppBar(
        title: Text(
          'Meditate',
          style: GoogleFonts.pacifico(),
          ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 300,
              child: ElevatedButton(
              onPressed: () async{
                 await player.setAsset('assets/Meditate.mp3');
                 player.play();
              },
              child: Text(
                'Meditate',
                style: GoogleFonts.pacifico(
                  textStyle: TextStyle(fontSize: 30, color: Colors.white)
                ),
                ),
              style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              padding: EdgeInsets.all(20),
              primary: Colors.grey, // <-- Button color
              onPrimary: Colors.lightGreenAccent, // <-- Splash color
                ), 
          ),
            ),

            const SizedBox(
              height: 15,
            ),

            Text(
              'Click to Meditate',
              style: GoogleFonts.pacifico(
                textStyle: TextStyle(fontSize: 40)
              )
            ),
             const SizedBox(
              height: 10,
            ),

            Padding(
              padding: const EdgeInsets.only(left:5.0, right: 2),
              child: Text(
                'Close your eyes. Sit on the floor and listen to the sound. Also this is a 5 minute Meditation. Dont loose focus. Do this everyday. Eventually you will feel extremely good. Your depression, anxiety and all tensions will get controlled.',
                style: GoogleFonts.pacifico(
                  textStyle: TextStyle(fontSize: 17)
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}