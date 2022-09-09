import 'package:flutter/material.dart';
import 'package:fluttergrundlagen/presentation/widgets_examples/widgets/custom_buttons.dart';

class Screen1 extends StatelessWidget {
  final String buttonText;

  const Screen1({Key? key, required this.buttonText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text("Screen 1"),
        centerTitle: true,
      ),
      body: Center(
        child: CustomButton(
          onPressed: () {
            Navigator.of(context).pop(); // entfernt die oberste Route
          },
          buttonText: buttonText,
          color: Colors.deepOrange,
          elevationShadow: 16,
          fontSize: 16.0,
        ),
      ),
    );
  }
}
