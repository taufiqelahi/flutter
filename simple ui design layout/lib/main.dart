import 'package:flutter/material.dart';
import 'package:poject2/pages/home.dart';
import 'package:poject2/pages/info.dart';
import 'package:poject2/pages/loding.dart';
import 'package:poject2/pages/first.dart';
import 'package:poject2/pages/menuhome.dart';
import 'package:poject2/pages/bar.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/info': (context) => Info(),
        '/first': (context) => First(),
        '/menuhome': (context) => Menuhome(),
        '/bar': (context) => Bar(),
      },
    ));
