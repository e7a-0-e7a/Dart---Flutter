import 'package:flutter/material.dart';

class RectImage extends StatelessWidget {
  const RectImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 200,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          "assets/images/RhavensBubble.jpg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
