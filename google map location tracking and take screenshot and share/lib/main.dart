import 'package:flutter/material.dart';
import 'package:map_location/scereen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(

        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(title: 'ss',),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Google map',
          style: TextStyle(),
          ),
        ),

      ),
      body: Center(

        child: Column(


          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'map demo',
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          Navigator.push(context,   MaterialPageRoute(builder: (context)=>Mapscreen()),);
        },
        tooltip: 'google map',

        child: Icon(Icons.location_pin),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
