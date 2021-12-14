import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 300.0, 10.0, 0.0),
          child: Center(
            child: Column(
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/info');
                  },
                  icon: Icon(Icons.location_history),
                  label: Text(
                    'Login',
                    style: TextStyle(backgroundColor: Colors.blue),
                  ),
                ),
                SizedBox(height: 20,),
                ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/info');
                    },
                    icon: Icon(Icons.assignment_ind_outlined),
                    label: Text(
                      'As a guest',
                      style: TextStyle(
                        backgroundColor: Colors.blue,
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
