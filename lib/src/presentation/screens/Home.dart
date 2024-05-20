import 'package:flutter/material.dart';
import 'package:test_flutter/src/presentation/widgets/CustomListView.dart';
import 'package:test_flutter/src/utils/CounterService.dart';

import '../widgets/AppBarWithImage.dart';
import '../widgets/CustomInputText.dart';

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
      body: Column(
          children: [Expanded(child: CustomListview()), CustomInputText()]),
    );
  }
}
