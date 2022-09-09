import 'package:flutter/material.dart';

import '../widgets/custom_buttons.dart';

class Screen2 extends StatelessWidget {
  final String buttonText;
  const Screen2({Key? key, required this.buttonText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Screen 2"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              buttonText: buttonText,
              color: Colors.orange,
              elevationShadow: 16,
              fontSize: 16.0,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomButton(
              onPressed: () {
                // Navigator.of(context).pushNamed("/screen_1"); // stay in Route
                Navigator.of(context)
                    .pushReplacementNamed("/screen_1"); // replace old Route
              },
              buttonText: "Go to Screen 1",
              color: Colors.amber,
              elevationShadow: 16,
              fontSize: 11.0,
            ),
          ],
        ),
      ),
    );
  }
}
