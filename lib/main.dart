import 'package:flutter/material.dart';
import 'package:lecture_6/features/navigator_named/arguments/second_screen_arguments.dart';
import 'package:lecture_6/features/navigator_named/first_screen.dart';
import 'package:lecture_6/features/navigator_named/second_screen.dart';
import 'package:lecture_6/features/navigator_named/third_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      title: 'Named Routes Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => const FirstScreen(),
        '/third': (context) => const ThirdScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/second') {
          final args = settings.arguments as SecondScreenArguments;
          return MaterialPageRoute(
            builder: (context) {
              return SecondScreen(
                data: args.data,
              );
            },
          );
        }
        return null;
      },
    );
  }
}
