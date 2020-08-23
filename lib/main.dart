import 'package:flutter/material.dart';
import 'package:login/signUp.dart';
import 'loginPage.dart';
import 'signUp.dart';
import 'HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SignUp Page",
      theme: ThemeData(primaryColor: Colors.cyan),
      initialRoute: "SignIn",
      routes: {
        "SignIn": (context) => SignInPage(),
        "SignUp": (context) => SignUpPage(),
        "Home": (context) => HomePage()
      },
      //home: SignInPage(),
    );
  }
}
