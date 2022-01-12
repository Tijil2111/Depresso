// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, use_key_in_widget_constructors, prefer_collection_literals, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'list.dart';
import 'package:add_2_calendar/add_2_calendar.dart';

class ListCard extends StatelessWidget {


   late  final myList lists;
   ListCard({required this.lists});
   final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  Event buildEvent({Recurrence? recurrence}) {
    return Event(
      title: lists.name,
      description: 'I want to watch this/ hear this',
      location: 'My Hous',
      startDate: DateTime.now().add(Duration(minutes: 30)),
      endDate: DateTime.now().add(Duration(minutes: 100)),
      allDay: false,
      recurrence: recurrence,
    );
  }

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
                trailing: InkWell(
                  onTap: (){
                Add2Calendar.addEvent2Cal(
                  buildEvent(),
                );
                  },
                  child: Icon(
                    Icons.calendar_today
                  )
                ),
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



