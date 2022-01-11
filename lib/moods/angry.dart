// ignore_for_file: deprecated_member_use

import 'package:depresso/bottomSheets/angry_bottom.dart';
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
            const SizedBox(height: 30),
            Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network('https://media.istockphoto.com/photos/scream-picture-id183241016')
            ),
          ),
        ), 
        Text(
          'Wanna not be angry ? Use our tips !!',
          style: GoogleFonts.pacifico(
            textStyle: const TextStyle(fontSize: 20)
            ),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
            'Try to be polite. Never take things to heart. If you feel someone is trying to get you go mad then just listen from one ear and throw out from another ear. Those people wanna take advantage of your weakness. This world is of mean people. Try to improve yourself. Use further below resources like Songs and anime and movies to reduce your anger. These include Happy genre and Funny Genre.',
            style: GoogleFonts.oxygen(textStyle: const TextStyle(fontSize: 15)
            ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: ButtonTheme(
                          minWidth: 200.0,
                          height: 100.0,
                        child: RaisedButton(
                          onPressed: (){
                            showModalBottomSheet(
                              shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                          ),
                            isScrollControlled:true,
                           context: context,
                           builder: (BuildContext context) {
                            return Container(
                              height: 700,
                              child: AngrySongs()
                            );
                            });
                          },
                          highlightElevation: 100,
                          color: Colors.grey,
                          child: Text(
                            'Songs',
                            style: GoogleFonts.pacifico()
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: ButtonTheme(
                          minWidth: 200.0,
                          height: 100.0,
                        child: RaisedButton(
                          onPressed: (){
                             showModalBottomSheet(
                              shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                          ),
                            isScrollControlled:true,
                           context: context,
                           builder: (BuildContext context) {
                            return Container(
                              height: 700,
                              child: AngryAnime()
                            );
                            });
                        },
                          highlightElevation: 100,
                          color: Colors.grey,
                          child: Text(
                            'Anime/Movies',
                            style: GoogleFonts.pacifico()
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}