// ignore_for_file: prefer_const_constructors

import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'platzi_trips.dart';
import 'platzi_trips_cupertino.dart';

void main(){
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness:Brightness.light
      )
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({super.key});


  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App en Flutter',
      theme: ThemeData(
        primarySwatch: Colors.red,
        backgroundColor: Colors.white
      ),
      home: PlatziTrips()
    );
  }
}


