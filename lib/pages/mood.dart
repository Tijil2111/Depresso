// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class MoodPage extends StatefulWidget {
  const MoodPage({ Key? key }) : super(key: key);

  @override
  _MoodPageState createState() => _MoodPageState();
}

class _MoodPageState extends State<MoodPage> {
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

    ],
  ),),
      appBar: AppBar(
        title: Text(
          'Depresso',
          style: GoogleFonts.pacifico(),
          ),
        centerTitle: true,
      ),


      body: Center(
        child: Column(
          children: [
             const SizedBox(
              height:30
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
                            Navigator.pushNamed(context, '/angry');
                          },
                          highlightElevation: 100,
                          color: Colors.grey,
                          child: Text(
                            'Angry',
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
                          onPressed: (){Navigator.pushNamed(context, '/sad');},
                          highlightElevation: 100,
                          color: Colors.grey,
                          child: Text(
                            'Sad',
                            style: GoogleFonts.pacifico()
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
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
                          onPressed: (){Navigator.pushNamed(context, '/depressed');},
                          highlightElevation: 100,
                          color: Colors.grey,
                          child: Text(
                            'Depressed',
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
                          onPressed: (){Navigator.pushNamed(context, '/calm');},
                          highlightElevation: 100,
                          color: Colors.grey,
                          child: Text(
                            'Want to get Calm',
                            style: GoogleFonts.pacifico()
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),
            Text(
              'More coming soon !!!',
              style: GoogleFonts.pacifico(
                textStyle: const TextStyle(fontSize: 30)
              )
            )
          ],
        )
      )
    );
  }
}