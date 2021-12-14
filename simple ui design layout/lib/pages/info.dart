import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  const Info({Key? key}) : super(key: key);

  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Company name'),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.purple, Colors.red])),
          )),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 300.0, 20.0, 0.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(color: Colors.green, width: 20.0),
                  ),
                  hintText: "Enter your Email"),
            ),
          ),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: "Facebook"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/first');
            },
            child: Text('submit'),
          )
        ],
      ),
    );
  }
}
