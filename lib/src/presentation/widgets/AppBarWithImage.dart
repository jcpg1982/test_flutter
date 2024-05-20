import 'package:flutter/material.dart';

import 'ImageLoad.dart';

class AppBarWithImage extends StatelessWidget implements PreferredSizeWidget {
  final String imageUrl;
  final String title;

  const AppBarWithImage(
      {super.key, required this.imageUrl, required this.title});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        leading: Padding(
            padding: const EdgeInsets.all(4.00),
            child: ImageLoad(imageUrl: imageUrl, size: 30.00)),
        title: Text(title));
  }
}
