   
import 'package:depresso/list%20code/list.dart';
import 'package:depresso/list%20code/list_card.dart';
import 'package:flutter/material.dart';


class DepressedSongs extends StatelessWidget {

List<myList> songs = [
  myList(name: 'Three Little Birds', website: 'https://www.youtube.com/watch?v=zaGUr6wzyT8',category: 'Song'),
  myList(name: 'Alive', website: 'https://youtu.be/t2NgsJrrAyM',category: 'Song'),
  myList(name: '1-800-273-8255', website: 'https://youtu.be/Kb24RrHIbFk',category: 'Song'),
  myList(name: "I Won’t Give Up", website: 'https://youtu.be/O1-4u9W-bns',category: 'Song'),
  myList(name: 'Weightless', website: 'https://youtu.be/AUxLeytLHVk',category: 'Song'),
  myList(name: 'Scars To Your Beautiful', website: 'https://youtu.be/MWASeaYuHZo',category: 'Song'),
  myList(name: 'Nothing Else Matters', website: 'https://youtu.be/tAGnKpE4NCI',category: 'Song'),
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

class DepressedAnime extends StatelessWidget {
  
List<myList> songs = [
  myList(name: 'Jojo’s Bizarre Adventure', website: 'https://animixplay.to/v1/jojos-bizarre-adventure',category: 'Anime'),
  myList(name: 'Hinamatsuri', website: 'https://animixplay.to/v1/hazamatsuri',category: 'Anime'),
  myList(name: 'The Devil is a Part-Timer', website: 'https://animixplay.to/v1/hataraku-maou-sama',category: 'Anime'),
  myList(name: 'My Roommate is a Cat', website: 'https://animixplay.to/v1/doukyonin-wa-hiza-tokidoki-atama-no-ue',category: 'Anime'),
  myList(name: 'Assassination Classroom', website: 'https://animixplay.to/v1/ansatsu-kyoushitsu-tv-',category: 'Anime'),
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