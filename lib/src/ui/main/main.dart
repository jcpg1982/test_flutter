import 'package:flutter/material.dart';
import 'package:test_flutter/src/data/model/Routes.dart';
import 'package:test_flutter/src/ui/screens/Register.dart';

import '../screens/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final navigator = const Navigator();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: Routes.HOME,
      routes: {
        Routes.HOME: (context) => const HomeApp(),
        Routes.REGISTER: (context) => const RegisterApp()
      },
      /*home: const HomeApp(),*/
    );
  }
}
