import 'package:flutter/material.dart';
import 'package:shapeme/home_page.dart';
import 'package:shapeme/main_page.dart';
import 'Login_page.dart';
import 'auth.dart';
import 'root_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'profile_page.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(new MyApp());
  }

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
        title: 'Flutter login demo',
        theme: new ThemeData(
          primaryColor: Color(0xFF21BFBD),
        ),
        home: new RootPage(auth: new Auth()),
        routes: <String, WidgetBuilder>{
          "/SecondPage": (BuildContext context) => new MainPage(),
        }
    );
  }
}
























