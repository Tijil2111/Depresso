import 'package:depresso/bottomSheets/angry_bottom.dart';
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
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 30),
            Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network('https://media.istockphoto.com/photos/african-american-woman-day-dreaming-in-public-park-on-beautiful-day-picture-id1289286426')
            ),
          ),
        ), 
        Text(
          'Wanna be calm ? Use our tips !!',
          style: GoogleFonts.pacifico(
            textStyle: const TextStyle(fontSize: 20)
            ),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
            'Try to avoid things that make you get angry or make you feel depressed. Get into nature. Read book spend time with family and friends. Also, find friends who care your friendship not your money or your influence. These things often keep depressed.',
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