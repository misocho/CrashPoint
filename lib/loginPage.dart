import 'package:flutter/material.dart';
import 'homePage.dart';
import 'newAccount.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  State createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  Animation<double> _iconAnimation;
  AnimationController _iconAnimationController;

  @override
  void initState() {
    super.initState();
    _iconAnimationController = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 500));
    _iconAnimation = new CurvedAnimation(
      parent: _iconAnimationController,
      curve: Curves.bounceOut,
    );
    _iconAnimation.addListener(() => this.setState(() {}));
    _iconAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.blueAccent,
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
              new Hero(
                tag: 'hero',
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 50.0,
                  child:
                      Image.asset('assets/Logo.png', width: 80.0, height: 80.0),
                ),
              ),
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
                            labelText: "Enter Email", fillColor: Colors.white),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      new TextFormField(
                        maxLengthEnforced: false,
                        maxLines: null,
                        decoration: new InputDecoration(
                          labelText: "Enter Password",
                        ),
                        obscureText: true,
                        keyboardType: TextInputType.text,
                      ),
                      new Padding(
                        padding: const EdgeInsets.only(top: 40.0),
                      ),
                      new MaterialButton(
                        height: 50.0,
                        minWidth: 140.0,
                        color: Colors.green,
                        splashColor: Colors.teal,
                        textColor: Colors.white,
                        child: new Text("Login"),
                        onPressed: () {
                          Navigator.of(context).pushNamed(HomePage.tag);
                        },
                      ),
                      new FlatButton(
                        child: Text(
                          'Forgot Password?',
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
                        child: new Text("Create Account"),
                        onPressed: () {
                          Navigator.of(context).pushNamed(NewAccount.tag);
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
