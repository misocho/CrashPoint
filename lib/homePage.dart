import 'package:flutter/material.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  static String tag = 'home-page';

  @override
  HomePageState createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  List data;

  final topBar = new AppBar(
    backgroundColor: Colors.blue,
    centerTitle: true,
    elevation: 1.0,
    title: Text(
      'Crash Point',
      style: TextStyle(color: new Color(0xfff8faf8)),
    ),
    leading: new IconButton(
        icon: Icon(
          Icons.search,
        ),
        color: new Color(0xfff8faf8),
        onPressed: () {}),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: IconButton(
          icon: Icon(
            Icons.near_me,
          ),
          color: new Color(0xfff8faf8),
          onPressed: () {},
        ),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: topBar,
      backgroundColor: new Color(0xfff8faf8),
      body: new Container(
        child: new Center(
          child: new FutureBuilder(
            future: DefaultAssetBundle
            .of(context)
            .loadString('JSONdata/db.json'),
            builder: (context, snapshot) {
              // Decode JSON
              var mydata = json.decode(snapshot.data.toString());

              return new ListView.builder(
                itemBuilder: (BuildContext context, int index){
                  return new Card(
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[ 
                        new Text("Name: " + mydata[index]['Hostels.hostelName']),
                        new Text("Location: " + mydata[index]['Hostels.hostelLocation']),
                      ],
                    ),
                  );
                },
                itemCount: mydata == null ? 0 : mydata.length,
              );
            },
          ),
        ),
      ),
      bottomNavigationBar: new Container(
        color: new Color(0xfff8faf8),
        height: 50.0,
        alignment: Alignment.center,
        child: new BottomAppBar(
          child: new Row(
            // alignment: MainAxisAlignment.spaceAround.
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new IconButton(
                icon: Icon(
                  Icons.home,
                ),
                onPressed: () {},
              ),
              new IconButton(
                icon: Icon(
                  Icons.favorite,
                ),
                onPressed: null,
              ),
              new IconButton(
                icon: Icon(
                  Icons.message,
                ),
                onPressed: null,
              ),
              new IconButton(
                icon: Icon(
                  Icons.account_box,
                ),
                onPressed: null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
