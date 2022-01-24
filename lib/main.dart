import 'package:bdfoods/Details/DetailsPage.dart';
import 'package:bdfoods/HomePage/HomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/":(context)=>HomePage(),
        DetailsPage.route:(context)=>DetailsPage(),
      },
    );
  }
}
