import 'package:flutter/material.dart';

class CustomListview extends StatelessWidget {
  const CustomListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView.builder(
          itemCount: 1000,
          itemBuilder: (context, index) {
            return Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Text('index N° $index', textAlign: TextAlign.justify)
              ],
            );
          }),
    ));
  }
}
