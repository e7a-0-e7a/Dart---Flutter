import 'package:flutter/material.dart';

class RowExpandedWidget extends StatelessWidget {
  const RowExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          color: Colors.amber,
          height: 100,
          width: 50,
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.pink,
            height: 100,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.purple,
            height: 100,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          color: Colors.amber,
          height: 100,
          width: 50,
        ),
      ],
    );
  }
}
