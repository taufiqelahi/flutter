import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('textds'),
        ),
        body: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                    decoration: BoxDecoration(color: Colors.grey.shade200),
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        fillColor: Colors.red,
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: 'Write something....',
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,

                  right:0 ,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: new EdgeInsets.only(right: 10.0),
                          height: 40,
                          width: 40,
                          alignment: Alignment.bottomLeft,
                          decoration: new BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20),
                          ),

                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.notifications))),
                      Container(
                          margin: new EdgeInsets.only(right: 10.0),
                          height: 40,
                          width: 40,
                          decoration: new BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20),
                          ),

                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.notifications))),
                      Container(
                          margin: new EdgeInsets.only(right: 20.0),
                          height: 40,
                          width: 40,
                          decoration: new BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20),
                          ),

                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.ac_unit_sharp)))
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 25,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
