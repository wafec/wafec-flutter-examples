import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BeautifulList extends StatelessWidget {
  const BeautifulList ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        Card(
          child: ListTile(
              title: Text('Battery Full'),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1547721064-da6cfb341d50"
                ),
              ),
              trailing: Icon(Icons.star),
              subtitle: Text('The battery is full.'),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: const Text('Battery full pressed!'),
                  duration: const Duration(seconds: 2)
                ));
              },
          )
        ),
        Card(
          child: ListTile(
              title: Text('Anchor'),
              leading: Icon(Icons.anchor),
              trailing: Icon(Icons.star),
              subtitle: Text('Lower the anchor.')
          )
        ),
        Card(
          child: ListTile(
              title: Text('Alarm'),
              leading: Icon(Icons.alarm),
              trailing: Icon(Icons.star),
              subtitle: Text('This is the time.')
          )
        ),
        Card(
          child: ListTile(
              title: Text('Ballot'),
              leading: Icon(Icons.ballot),
              subtitle: Text('Cast your voice.')
          )
        )
      ]
    );
  }
}
