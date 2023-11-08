import 'package:flutter/material.dart';
import 'package:lecture_6/features/navigator/second_screen.dart';

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Open route2'),
          onPressed: () {
            Navigator.push<String?>(
              context,
              MaterialPageRoute(
                builder: (context) => const SecondRoute(data: 'Some Data'),
              ),
            ).then(
              (value) {
                if (value != null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(value),
                    ),
                  );
                }
              },
            );
          },
        ),
      ),
    );
  }
}
