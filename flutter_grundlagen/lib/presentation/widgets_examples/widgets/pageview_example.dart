import 'package:flutter/material.dart';

class PageViewExample extends StatelessWidget {
  const PageViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.3,
      child: PageView(
        controller: PageController(viewportFraction: 0.95),
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Container(
              height: size.height * 0.3,
              width: size.width * 0.8,
              color: Colors.amber,
            ),
          ),
          Container(
            height: size.height * 0.3,
            width: size.width * 0.8,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
