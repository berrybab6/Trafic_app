import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        toolbarHeight: 0.0,
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Container(
            height: 250,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/img/cyan1.jpg"),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(Icons.person), onPressed: null),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.only(left: 4.0, right: 20.0),
                  child: (TextField(
                    decoration: InputDecoration(hintText: "Username"),
                  )),
                ))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(Icons.lock), onPressed: null),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.only(left: 4.0, right: 20.0),
                  child: (TextField(
                    decoration: InputDecoration(hintText: "Password"),
                  )),
                ))
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  height: 45,
                  child: RaisedButton(
                      child: Text(
                        "SIGN IN",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                      color: Colors.cyan,
                      onPressed: () {
                        Navigator.of(context).pushNamed("Home");
                      }),
                ),
              )),
          SizedBox(
            height: 10.0,
          ),
          InkWell(
              onTap: () {
                Navigator.pushNamed(context, "SignUp");
              },
              child: Center(
                  child: RichText(
                      text: TextSpan(
                text: "Don't u have an Account?",
                style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                children: [
                  TextSpan(
                      text: " SIGN UP",
                      style: TextStyle(fontSize: 15.0, color: Colors.cyan))
                ],
              ))))
        ],
      ),
    );
  }
}
