import 'package:flutter/material.dart';
import 'package:lecture_6/features/navigator/third_screen.dart';

class SecondRoute extends StatelessWidget {
  final String data;

  const SecondRoute({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(data),
            const SizedBox(height: 40),
            ElevatedButton(
              child: const Text('Open route3'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ThirdRoute(),
                  ),
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go back!'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, data);
              },
              child: const Text('Go back with data'),
            ),
          ],
        ),
      ),
    );
  }
}
