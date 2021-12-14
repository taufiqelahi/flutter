import 'package:flutter/material.dart';

class Bar extends StatefulWidget {
  const Bar({Key? key}) : super(key: key);

  @override
  _BarState createState() => _BarState();
}

class _BarState extends State<Bar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.favorite_sharp),
            title: Text('Favourite'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.featured_play_list_outlined),
            title: Text('Featured'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.download),
            title: Text('Download'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.remove_red_eye),
            title: Text('Demo'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('About Us'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Exit'),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
