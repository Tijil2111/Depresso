// ignore_for_file: use_key_in_widget_constructors, must_be_immutable


   
import 'package:depresso/list%20code/list.dart';
import 'package:depresso/list%20code/list_card.dart';
import 'package:flutter/material.dart';


class SadSongs extends StatelessWidget {

List<myList> songs = [
  myList(name: 'Let’s Go Crazy', website: 'https://www.youtube.com/watch?v=aXJhDltzYVQ',category: 'Song'),
  myList(name: 'I Got You (I Feel Good)', website: 'https://www.youtube.com/watch?v=iSLwVaebsJg',category: 'Song'),
  myList(name: 'Don’t Stop Me Now', website: 'https://www.youtube.com/watch?v=HgzGwKwLmgM',category: 'Song'),
  myList(name: 'Good as Hell', website: 'https://www.youtube.com/watch?v=vuq-VAiW9kw',category: 'Song'),
  myList(name: 'Tightrope', website: 'https://www.youtube.com/watch?v=75EYy4cI4_U',category: 'Song'),
  myList(name: 'Three Little Birds', website: 'https://www.youtube.com/watch?v=LanCLS_hIo4',category: 'Song'),
  myList(name: 'Shout', website: 'https://www.youtube.com/watch?v=rWRsJ-mDU5o',category: 'Song'),
  myList(name: 'Dancing Queen', website: 'https://www.youtube.com/watch?v=xFrGuyw1V8s',category: 'Song'),
  
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

class SadAnime extends StatelessWidget {
  
List<myList> songs = [
  myList(name: 'K-On!', website: 'https://animixplay.to/v1/k-on',category: 'Anime'),
  myList(name: 'Haikyuu!!', website: 'https://animixplay.to/v1/haikyuu',category: 'Anime'),
  myList(name: 'Natsume Yuujinchou', website: 'https://animixplay.to/v1/natsume-yuujinchou',category: 'Anime'),
  myList(name: 'Gintama', website: 'https://animixplay.to/v1/gintama',category: 'Anime'),
  myList(name: 'One Piece', website: 'https://animixplay.to/v1/one-piece',category: 'Anime'),
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