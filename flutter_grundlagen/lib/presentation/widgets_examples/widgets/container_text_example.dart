import 'package:flutter/material.dart';

class ContainerTextExamples extends StatelessWidget {
  const ContainerTextExamples({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 350,
      decoration: BoxDecoration(
          color: Colors.grey,
          border:
              Border.all(color: const Color.fromARGB(255, 73, 1, 1), width: 4),
          borderRadius: BorderRadius.circular(12)),
      child: Center(
        child: Material(
          borderRadius: BorderRadius.circular(10),
          elevation: 10,
          child: Container(
            alignment: Alignment.center,
            //padding: const EdgeInsets.only(bottom: 20),
            height: 120,
            width: 300,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 75, 75, 75),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Text(
              "Bubble ur Life",
              style: TextStyle(
                  fontFamily: "Roboto", fontSize: 25, letterSpacing: 3),
            ),
          ),
        ),
      ),
    );
  }
}
