import 'package:flutter/material.dart';
import 'package:fluttergrundlagen/presentation/widgets_examples/widgets/container_text_example.dart';
import 'package:fluttergrundlagen/presentation/widgets_examples/widgets/profile_picture.dart';
import 'package:fluttergrundlagen/presentation/widgets_examples/widgets/row_expanded_example.dart';

class WidgetsExamplesPage extends StatelessWidget {
  const WidgetsExamplesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 49, 49, 49),
        appBar: AppBar(
          leading: const Icon(Icons.home_sharp),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 75, 6, 1),
          titleTextStyle: const TextStyle(
              color: Colors.amber,
              fontSize: 20,
              fontWeight: FontWeight.w500,
              fontFamily: "JetBrains Mono",
              fontStyle: FontStyle.normal,
              letterSpacing: 3),
          title: const Text("Rhavens Bubble"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                SizedBox(
                  height: 10,
                ),
                ContainerTextExamples(),
                SizedBox(
                  height: 10,
                ),
                RowExpandedWidget(),
                SizedBox(
                  height: 10,
                ),
                ProfilePicture(),
                SizedBox(
                  height: 10,
                ),
                //! RectImage(),
              ],
            ),
          ),
        ));
  }
}
