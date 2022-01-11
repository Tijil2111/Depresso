import 'package:flutter/material.dart';
import 'list.dart';

class ListCard extends StatelessWidget {
   late  final myList lists;
   ListCard({required this.lists});

  @override
  Widget build(BuildContext context) {
    return Card(
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
                  child: const Text('BUY TICKETS'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
                TextButton(
                  child: const Text('LISTEN'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      );
  }
}