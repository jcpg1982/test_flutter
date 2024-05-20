import 'package:flutter/material.dart';

class AppBarWithImage extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const AppBarWithImage({super.key, required this.title});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title));
  }
}
