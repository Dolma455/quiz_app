import 'package:flutter/material.dart';
import 'package:quiz_app_ad_basics/screen/start_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Quiz App"),
        ),
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromRGBO(235, 137, 101, 0.804),
            Color.fromARGB(255, 234, 157, 235),
            
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          )),
          child: const StartScreen(),
        ),
      ),
    );
  }
}
