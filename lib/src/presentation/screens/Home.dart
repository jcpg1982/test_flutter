import 'package:flutter/material.dart';
import 'package:test_flutter/src/presentation/widgets/ListView.dart';
import 'package:test_flutter/src/utils/CounterService.dart';

import '../widgets/AppBarWithImage.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<HomeApp> {
  final counterService = CounterService();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: AppBarWithImage(
            imageUrl:
                'https://www.mundodeportivo.com/alfabeta/hero/2023/09/goku-colores.jpg?width=1200',
            title: 'Inicio'),
        body:
            CustomListview() // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
