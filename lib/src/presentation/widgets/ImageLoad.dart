import 'package:flutter/material.dart';

class ImageLoad extends StatelessWidget {
  final String imageUrl;
  final double size;

  const ImageLoad({super.key, required this.imageUrl, required this.size});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: NetworkImage(imageUrl),
      radius: size,
    );
  }
}
//'https://www.mundodeportivo.com/alfabeta/hero/2023/09/goku-colores.jpg?width=1200'
