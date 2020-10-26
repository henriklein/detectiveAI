import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:detective_ai/pageController.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.black

  ));
  WidgetsFlutterBinding.ensureInitialized();
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Reflectly Inspiration',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'Google'
      ),
      home: pageController(),
    );
  }
}