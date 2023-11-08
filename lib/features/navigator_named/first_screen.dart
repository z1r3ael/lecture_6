import 'package:flutter/material.dart';
import 'package:lecture_6/features/navigator_named/arguments/second_screen_arguments.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(
              context,
              '/second',
              arguments: SecondScreenArguments(data: 'Some data'),
            );
          },
          child: const Text('Go to second'),
        ),
      ),
    );
  }
}
