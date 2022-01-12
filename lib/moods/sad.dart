import 'package:depresso/bottomSheets/sad_bottom.dart';
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
          'Sad',
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
              child: Image.network('https://media.istockphoto.com/photos/christmas-should-not-be-spent-alone-picture-id1343750983')
            ),
          ),
        ), 
        Text(
          'Wanna be Happy ? Use our tips !!',
          style: GoogleFonts.pacifico(
            textStyle: const TextStyle(fontSize: 20)
            ),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
            'First things first dont watch sad movies please. Those make you even sader. Then talk happy things. Watch happy things. Dont know where to find them use the list below',
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
                              child:SadSongs()
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
                              child: SadAnime()
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