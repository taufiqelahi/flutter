import 'package:flutter/material.dart';
import 'card.dart';
class NewWidget extends StatelessWidget {

  final Poem f;
  final VoidCallback   delete;

  NewWidget({required this.f,required this.delete});


  @override
  Widget build(BuildContext context) {

    return     Card(
      margin: EdgeInsets.all(8.0),
      child:
      Column(
        children: [
          Text(f.song),
          SizedBox(width: 9.0,),
          Text(f.name),
          SizedBox(height: 9.0,),
          ElevatedButton.icon(
            onPressed:delete ,
              icon: Icon(Icons.delete),
              label: Text('delete'),
          )


        ],

      ),

    );
  }
}

