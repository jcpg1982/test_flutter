import 'package:flutter/material.dart';
import 'package:test_flutter/src/config/themes/AppTheme.dart';
import 'package:test_flutter/src/presentation/screens/Home.dart';

import '../Locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(Object context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.light,
        home: const HomeApp());
  }
}
