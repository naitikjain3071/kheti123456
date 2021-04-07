import 'dart:io';

import 'package:flutter/material.dart';
import 'package:khetibaadi/screens/card.dart';
// import 'package:khetibaadi/screens/home_screen.dart';
import 'package:khetibaadi/screens/home.dart';

import 'package:khetibaadi/screens/language.dart';

void main() {
  HttpOverrides.global = new MyHttpOverrides();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        home: Language(),
        //theme: ThemeData(),
      ),
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
