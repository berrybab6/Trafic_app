import 'package:flutter/material.dart';
import "HomePage.dart";
/*
class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:SignUpPage,
    );
  }
}*/

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          BackButtonWidget(),
          SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
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
            padding: EdgeInsets.all(15.0),
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(Icons.mail), onPressed: null),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.only(left: 4.0, right: 20.0),
                  child: (TextField(
                    decoration: InputDecoration(hintText: "Email"),
                  )),
                ))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
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
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(Icons.lock), onPressed: null),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.only(left: 4.0, right: 20.0),
                  child: (TextField(
                    decoration: InputDecoration(hintText: "Confirm Password"),
                  )),
                ))
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Row(
                children: [
                  Radio(value: null, groupValue: null, onChanged: null),
                  RichText(
                    text: TextSpan(
                        text: "I have accepted the",
                        style: TextStyle(color: Colors.black),
                        children: [
                          TextSpan(
                              text: "Terms and Condition",
                              style: TextStyle(
                                  color: Colors.cyan,
                                  fontWeight: FontWeight.bold))
                        ]),
                  )
                ],
              )),
          SizedBox(
            height: 5.0,
          ),
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  height: 45,
                  child: RaisedButton(
                      child: Text(
                        "SIGN UP",
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
        ],
      ),
    );
  }
}

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img/cyan1.jpg"), fit: BoxFit.cover)),
      child: Positioned(
        child: Stack(
          children: [
            Positioned(
                top: 20.0,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "Back",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )),
            SizedBox(
              height: 20.0,
            ),
            Positioned(
              bottom: 40,
              child: Padding(
                  padding: EdgeInsets.only(
                    left: 50.0,
                  ),
                  child: Text(
                    "Create New Account",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 35.0,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
