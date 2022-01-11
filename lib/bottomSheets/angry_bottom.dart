// ignore_for_file: use_key_in_widget_constructors, must_be_immutable


   
import 'package:depresso/list%20code/list.dart';
import 'package:depresso/list%20code/list_card.dart';
import 'package:flutter/material.dart';


class AngrySongs extends StatelessWidget {

List<myList> songs = [
  myList(name: 'I hate Everything About You', website: 'https://www.youtube.com/watch?v=d8ekz_CSBVg',category: 'Song'),
  myList(name: 'One Step Closer', website: 'https://www.youtube.com/watch?v=4qlCC1GOwFw',category: 'Song'),
  myList(name: 'Platypus', website: 'https://www.youtube.com/watch?v=Oxaljj7UjKU',category: 'Song'),
  myList(name: 'The Way I Am', website: 'youtube.com/watch?v=mQvteoFiMlg',category: 'Song'),
  myList(name: 'Killing In the Name', website: 'https://www.youtube.com/watch?v=bWXazVhlyxQ',category: 'Song'),
  myList(name: 'Prison Song', website: 'https://www.youtube.com/watch?v=SiqSl6x3XAY',category: 'Song'),
  myList(name: 'Dead Bodies Everywhere', website: 'https://www.youtube.com/watch?v=6j6-elqb2Wc',category: 'Song'),
  myList(name: 'Bodies', website: 'https://www.youtube.com/watch?v=04F4xlWSFh0',category: 'Song'),
  myList(name: 'Down With The Sickness', website: 'https://www.youtube.com/watch?v=09LTT0xwdfw',category: 'Song'),
  myList(name: 'Break Stuff', website: 'https://www.youtube.com/watch?v=ZpUYjpKg9KY',category: 'Song'),
  
];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        shrinkWrap: true,
        children: [
          Padding(
          padding: const EdgeInsets.fromLTRB(20,20,20,20),
          child: Column(
            children: songs.map((name) => ListCard(
              lists: name,
            )).toList(),
          ),
        ),
        ],
      ),
    );

  }
}

class AngryAnime extends StatelessWidget {
  
List<myList> songs = [
  myList(name: 'Barakamon', website: 'https://animixplay.to/v1/barakamon',category: 'Anime'),
  myList(name: 'Gin no Saji', website: 'https://animixplay.to/v1/silver-spoon',category: 'Anime'),
  myList(name: 'Natsume Yuujinchou', website: 'https://animixplay.to/v1/natsume-yuujinchou',category: 'Anime'),
  myList(name: 'Kimi to Boku', website: 'https://animixplay.to/v1/kimi-to-boku',category: 'Anime'),
  myList(name: 'Tsuritama', website: 'https://animixplay.to/v1/tsuritama',category: 'Anime'),
  myList(name: 'The Belko Experiment', website: 'https://www.youtube.com/watch?v=jP2Ow2CX6OQ',category: 'Movie (Horror)'),
  
];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        shrinkWrap: true,
        children: [
          Padding(
          padding: const EdgeInsets.fromLTRB(20,20,20,20),
          child: Column(
            children: songs.map((name) => ListCard(
              lists: name,
            )).toList(),
          ),
        ),
        ],
      ),
    );

  }
}