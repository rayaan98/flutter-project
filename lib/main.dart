// ignore_for_file: duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter_first/myhomepage.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _fbApp = Firebase.initializeApp();
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          primarySwatch: Colors.blue,
        ),
        home: FutureBuilder(
          future: _fbApp,
          builder: (context, snapshot) {
            // ignore: duplicate_ignore, duplicate_ignore
            if (snapshot.hasError) {
              // ignore: avoid_print
              print('You have an Error! ${snapshot.error.toString()}');
              // ignore: prefer_const_constructors
              return Text('Something went wrong');
            }

            // Once complete, show your application
            else if (snapshot.hasData) {
              return const MyHomePage(title: 'Flutter  Home Page');
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ));
  }
}
