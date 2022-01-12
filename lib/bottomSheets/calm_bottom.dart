// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'package:depresso/list%20code/list.dart';
import 'package:depresso/list%20code/list_card.dart';
import 'package:flutter/material.dart';


class CalmSongs extends StatelessWidget {

List<myList> songs = [
  myList(name: 'Weightless', website: 'https://open.spotify.com/track/6kkwzB6hXLIONkEk9JciA6',category: 'Song'),
  myList(name: 'Electra', website: 'https://open.spotify.com/track/4c5NPPndaEkb0dUVYFlKlT',category: 'Song'),
  myList(name: 'Mellomaniac (Chillout Mix)', website: 'https://open.spotify.com/track/7gEky4JRrXUQdImEldIUlT',category: 'Song'),
  myList(name: 'Watermark', website: 'https://open.spotify.com/track/2XkWsVewOXOhSwWCQx2tR8',category: 'Song'),
  myList(name: 'Strawberry Swing', website: 'https://open.spotify.com/track/2dphvmoLEXdk8hOYxmHlI3',category: 'Song'),
  myList(name: "Please Don't Go", website: 'https://open.spotify.com/track/0ZYUtl8holBJzGflXRcwEs',category: 'Song'),
  myList(name: 'Pure Shores', website: 'https://open.spotify.com/track/6ZLGthToczpvnL5Eoy6yrY',category: 'Song'),
  myList(name: 'Someone Like You', website: 'https://open.spotify.com/track/3bNv3VuUOKgrf5hu3YcuRo',category: 'Song'),
  myList(name: "Canzonetta Sull’aria", website: 'https://open.spotify.com/track/4ut26ZXnJJLZjrIj8JxN56  ',category: 'Song'),
  myList(name: 'We Can Fly', website: 'https://open.spotify.com/track/2q7AEvIwBCaVOa1blpPJyt',category: 'Song'),
  
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

class CalmAnime extends StatelessWidget {
  
List<myList> songs = [
  myList(name: 'Polar Bear Cafe', website: 'https://animixplay.to/v1/polar-bear-cafe',category: 'Anime'),
  myList(name: 'Windy Tales', website: 'https://animixplay.to/v1/fuujin-monogatari',category: 'Anime'),
  myList(name: "Natsume’s Book of Friends", website: 'https://animixplay.to/anime/4081/Natsume_Yuujinchou',category: 'Anime'),
  myList(name: 'Flying Witch', website: 'https://animixplay.to/v1/flying-witch',category: 'Anime'),
  myList(name: 'Tsuritama', website: 'https://animixplay.to/v1/tsuritama',category: 'Anime'),
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