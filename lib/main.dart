import 'package:flutter/material.dart';
import 'inputpage.dart';

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
        primaryColor: const Color(0xFF0A0E21),
        scaffoldBackgroundColor:  const Color(0xFF0A0E18),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.purple),
        textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.white)),



      ),
      home: const InputPage(title: 'BMI'),
    );
  }
}
