import 'package:flutter/material.dart';

class ImageLoad extends StatelessWidget {
  final String imageUrl;
  final double percent;

  const ImageLoad({super.key, required this.imageUrl, required this.percent});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        imageUrl,
        width: size.width + percent,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          double? progress = loadingProgress != null
              ? loadingProgress.cumulativeBytesLoaded /
                  loadingProgress.expectedTotalBytes!
              : null;
          if (progress == null) return child;
          return CircularProgressIndicator(
            value: progress,
            backgroundColor: Colors.red,
          );
        },
      ),
    );
  }
}
