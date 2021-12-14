
import 'package:flutter/material.dart';


class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Bar(),
      appBar: AppBar(
        title: Text('Company Name  '),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search))
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.purple, Colors.red])),
        ),

      ),
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Row(
            children: [

              Image.asset('assets/design.jpg',height: 200,width:300 ,fit: BoxFit.fill,),
              SizedBox(width: 40,),

              Image.asset('assets/hi.png',height:200,width: 300,fit: BoxFit.fill,),

            ],
          ),
          Row(
            children: [
              Container(
                width: 300,
                padding: EdgeInsets.all(30.0),
                child: Text('''We use some essential cookies to make this website work.

We’d like to set additional cookies to understand how you use my company, remember your settings and improve government services.
We also use cookies set by other sites to help us deliver content from their services
                ''',maxLines: 5,style: TextStyle(fontWeight: FontWeight.bold),
                ),

              ),
              Container(
                width: 300,
                padding: EdgeInsets.all(30.0),
                child: Text('''We use some essential cookies to make this website work.

We’d like to set additional cookies to understand how you use my company, remember your settings and improve government services.
We also use cookies set by other sites to help us deliver content from their services
                ''',maxLines: 5,style: TextStyle(fontWeight: FontWeight.bold),
                ),

              ),
            ],
          ),



        ],
      ),



    );
  }
}
