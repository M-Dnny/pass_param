import 'package:flutter/material.dart';
import 'package:pass_param/pageOne.dart';
import 'package:pass_param/pageTwo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/": (context) => PageOne(),
        "two": (context) => PageTwo(),
      },
    );
  }
}
