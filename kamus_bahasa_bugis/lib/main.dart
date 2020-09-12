import 'package:flutter/material.dart';
import 'package:kamus_bahasa_bugis/page_kamus.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kampus Indonesia Bugis',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: PageKamusBugis(),
      debugShowCheckedModeBanner: false,
    );
  }
}
