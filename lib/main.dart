import 'package:flutter/material.dart';
import 'package:flutter_application_sowmiya/pageviewimagescreen.dart';
import 'package:flutter_application_sowmiya/pageviewtextscreen.dart';
import 'package:flutter_application_sowmiya/splashscreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(


        primarySwatch: Colors.blue,
      ),
      home:SplashScreen(),
    );
  }
}

