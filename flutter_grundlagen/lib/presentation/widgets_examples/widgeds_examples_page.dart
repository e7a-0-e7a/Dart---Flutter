import 'package:flutter/material.dart';
import 'package:fluttergrundlagen/presentation/widgets_examples/widgets/container_text_example.dart';
import 'package:fluttergrundlagen/presentation/widgets_examples/widgets/media_query_example.dart';
import 'package:fluttergrundlagen/presentation/widgets_examples/widgets/profile_picture.dart';
import 'package:fluttergrundlagen/presentation/widgets_examples/widgets/rectangular_image.dart';
import 'package:fluttergrundlagen/presentation/widgets_examples/widgets/row_expanded_example.dart';

import 'widgets/pageview_example.dart';

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
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                SizedBox(
                  height: 30,
                ),
                ContainerTextExamples(),
                SizedBox(
                  height: 30,
                ),
                RowExpandedWidget(),
                SizedBox(
                  height: 30,
                ),
                ProfilePicture(),
                SizedBox(
                  height: 30,
                ),
                RectImage(),
                SizedBox(
                  height: 30,
                ),
                MediaQueryExample(),
                SizedBox(
                  height: 30,
                ),
                PageViewExample(),
              ],
            ),
          ),
        ));
  }
}
