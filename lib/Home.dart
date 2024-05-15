import 'package:flutter/material.dart';
import 'package:test_flutter/utils/CounterService.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<HomeApp> {

  final counterService = CounterService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Inicio'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${counterService.counter}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    counterService.incrementCounter();
                  });
                },
                child: const Text('Aumentar')),
            TextButton(
                onPressed: () {
                  setState(() {
                    counterService.decrementCounter();
                  });
                },
                child: const Text('Disminuir'))
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
