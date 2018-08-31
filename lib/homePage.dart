import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
   static String tag = 'home-page';
  
    final topBar = new AppBar(
      backgroundColor: new Color(0xfff8faf8),
      centerTitle: true,
      elevation: 1.0,
      leading: new Icon(Icons.search, color: Colors.blue),

    );

   
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: topBar,
      backgroundColor: new Color(0xfff8faf8),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
           
          ],
        ),
      ),
    );
  }
}