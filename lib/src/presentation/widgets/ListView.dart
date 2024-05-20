import 'package:flutter/material.dart';

class CustomListview extends StatelessWidget {
  const CustomListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Expanded(
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Text('index N° $index');
            }),
      ),
    ));
  }

/*@override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(itemBuilder: (context, index) {
        Text('index N° $index');
      }),
    );
  }*/
}
