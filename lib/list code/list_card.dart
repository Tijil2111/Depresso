// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'list.dart';

class ListCard extends StatelessWidget {
   late  final myList lists;
   ListCard({required this.lists});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      child: Card(
        
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
               ListTile(
                title: Text(lists.name),
                subtitle: Text(lists.category),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text('Website'),
                    onPressed: () async{
                      if (!await launch(lists.website)) throw 'Could not launch website';
                    },
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            ],
          ),
        ),
    );
  }
}


