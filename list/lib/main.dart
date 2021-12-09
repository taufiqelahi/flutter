import 'package:flutter/material.dart';

import 'card.dart';
import 'new.dart';

void main() => runApp(MaterialApp(
      home: Test(),
    ));

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  List<Poem> data = [
    Poem(song: 'suhdsahdsa', name: 'ddd'),
    Poem(song: 'suhdsahdsa', name: 'dd'),
    Poem(song: 'suhdsahdsa', name: 'dd'),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('list of data '),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: data
              .map((g) => NewWidget(
            f: g,
            delete: (){
              setState(() {
                data.remove(g);

              });
            },



                  ))
              .toList(),
        ),
      ),
    );
  }
}
