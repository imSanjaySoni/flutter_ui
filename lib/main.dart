import 'package:app/pages/home.dart';
import 'package:app/theame.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown]);
    
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: secondary,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(Icons.menu, color: fourth, size: 32.0,),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 16.0, top: 16.0),
              child: CircleAvatar(
                backgroundColor: primary.withOpacity(0.5),
                radius: 16.0,
              )
            )
          ],
        ),
       
        body: HomePage()
        ),
      );
  }
}