import 'package:flutter/material.dart';
import 'homePage.dart';

class NewAccount extends StatefulWidget {
  static String tag = 'new-account';
  @override
  _NewAccountState createState() => _NewAccountState();
}

class _NewAccountState extends State<NewAccount> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: new Stack(fit: StackFit.expand, children: <Widget>[
        new Image(
          image: new AssetImage("assets/loginpageImage.jpeg"),
          fit: BoxFit.cover,
          colorBlendMode: BlendMode.darken,
          color: Colors.black87,
        ),
        new Theme(
          data: new ThemeData(
              brightness: Brightness.dark,
              inputDecorationTheme: new InputDecorationTheme(
                // hintStyle: new TextStyle(color: Colors.blue, fontSize: 20.0),
                labelStyle:
                    new TextStyle(color: Colors.tealAccent, fontSize: 25.0),
              )),
          isMaterialAppTheme: true,
          child: new ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(20.0),
            children: <Widget>[
              new Container(
                padding: const EdgeInsets.all(20.0),
                child: new Form(
                  autovalidate: true,
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new TextFormField(
                        maxLengthEnforced: false,
                        maxLines: null,
                        decoration: new InputDecoration(
                            labelText: "First Name", fillColor: Colors.white),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      new TextFormField(
                        maxLengthEnforced: false,
                        maxLines: null,
                        decoration: new InputDecoration(
                          labelText: "Second Name",
                        ),
                        keyboardType: TextInputType.text,
                      ),
                      new TextFormField(
                        maxLengthEnforced: false,
                        maxLines: null,
                        decoration: new InputDecoration(
                          labelText: "ID Number",
                        ),
                        keyboardType: TextInputType.number,
                      ),
                      new TextFormField(
                        maxLengthEnforced: false,
                        maxLines: null,
                        decoration: new InputDecoration(
                          labelText: "Phone Number",
                        ),
                        keyboardType: TextInputType.number,
                      ),
                      new TextFormField(
                        maxLengthEnforced: false,
                        maxLines: null,
                        decoration: new InputDecoration(
                          labelText: "Email",
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      new TextFormField(
                        maxLengthEnforced: false,
                        maxLines: null,
                        decoration: new InputDecoration(
                          labelText: "Password",
                        ),
                        obscureText: true,
                        keyboardType: TextInputType.text,
                      ),
                      new TextFormField(
                        maxLengthEnforced: false,
                        maxLines: null,
                        decoration: new InputDecoration(
                          labelText: "Confirm Password",
                        ),
                        obscureText: true,
                        keyboardType: TextInputType.text,
                      ),
                      new Padding(
                        padding: const EdgeInsets.only(top: 40.0),
                      ),
                      new FlatButton(
                        child: Text(
                          'I agree to the terms and conditions',
                          style: TextStyle(color: Colors.green),
                        ),
                        onPressed: () {},
                      ),
                      new MaterialButton(
                        height: 50.0,
                        minWidth: 140.0,
                        color: Colors.blue,
                        splashColor: Colors.green,
                        textColor: Colors.white,
                        child: new Text("Submit"),
                        onPressed: () {
                          Navigator.of(context).pushNamed(HomePage.tag);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
