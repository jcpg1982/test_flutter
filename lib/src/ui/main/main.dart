import 'package:flutter/material.dart';
import 'package:test_flutter/src/config/router/AppRouter.dart';

import '../../Locator.dart';
import '../../config/themes/AppTheme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(Object context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
      theme: AppTheme.light,
    );
  }
}
