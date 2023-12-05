import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz_logo.png',
            width: 300,
          ),
          const SizedBox(
            height: 16,
          ),
          const Text("Learn Flutter with fun"),
          const SizedBox(
            height: 16,
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Text("Get Started"),
          )
        ],
      ),
    );
  }
}
