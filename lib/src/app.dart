
import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/pages/contador_pages.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContadorPage(),
    );
  }
}

