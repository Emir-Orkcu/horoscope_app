import 'package:burc_app/burc_detay.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'burc_listesi.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(home: MyApp(),theme: ThemeData(brightness: Brightness.dark),debugShowCheckedModeBanner:false ,));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => BurcListesi()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/splashscreen4.jpg"),
                fit: BoxFit.cover)),
      ),
    );
  }
}