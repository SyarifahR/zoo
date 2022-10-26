import 'package:flutter/material.dart';
import 'package:zoo/pages/home.dart';
import 'package:zoo/pages/gallery.dart';
import 'package:zoo/pages/loading.dart';
import 'package:zoo/pages/page1.dart';
import 'package:zoo/pages/page2.dart';
import 'package:zoo/pages/page3.dart';
import 'package:zoo/pages/page4.dart';
import 'package:zoo/pages/page5.dart';
import 'package:zoo/pages/page6.dart';
import 'package:zoo/pages/page7.dart';
import 'package:zoo/pages/page8.dart';
import 'package:zoo/pages/page9.dart';

void main() => runApp(MaterialApp(

  debugShowCheckedModeBanner: false,

  initialRoute: '/home',
  routes: {
    '/':(context) => Loading(),
    '/home': (context) => Home(),
    '/gallery': (context) => Gallery(),
    '/page1': (context) => Page1(),
    '/page2': (context) => Page2(),
    '/page3': (context) => Page3(),
    '/page4': (context) => Page4(),
    '/page5': (context) => Page5(),
    '/page6': (context) => Page6(),
    '/page7': (context) => Page7(),
    '/page8': (context) => Page8(),
    '/page9': (context) => Page9(),
  },
));