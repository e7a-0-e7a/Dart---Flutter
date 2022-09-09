import 'package:flutter/material.dart';
import 'package:fluttergrundlagen/presentation/widgets_examples/widgets/container_text_example.dart';
import 'package:fluttergrundlagen/presentation/widgets_examples/widgets/custom_buttons.dart';
import 'package:fluttergrundlagen/presentation/widgets_examples/widgets/media_query_example.dart';
import 'package:fluttergrundlagen/presentation/widgets_examples/widgets/profile_picture.dart';
import 'package:fluttergrundlagen/presentation/widgets_examples/widgets/rectangular_image.dart';
import 'package:fluttergrundlagen/presentation/widgets_examples/widgets/row_expanded_example.dart';
import 'package:provider/provider.dart';

import '../../application/theme_service.dart';
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
            children: [
              const SizedBox(
                height: 30,
              ),
              const ContainerTextExamples(),
              const SizedBox(
                height: 30,
              ),
              const RowExpandedWidget(),
              const SizedBox(
                height: 30,
              ),
              const ProfilePicture(),
              const SizedBox(
                height: 30,
              ),
              const RectImage(),
              const SizedBox(
                height: 30,
              ),
              const MediaQueryExample(),
              const SizedBox(
                height: 30,
              ),
              const PageViewExample(),
              const SizedBox(
                height: 30,
              ),
              IconButton(
                splashColor: const Color.fromARGB(158, 83, 109, 254),
                onPressed: () {
                  print("Icon Button Pressed");
                },
                icon: const Icon(
                  Icons.abc,
                  color: Colors.purpleAccent,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextButton(
                onPressed: () {
                  print("Test Button Pressed");
                },
                child: Container(
                  color: Colors.grey,
                  child: const Text(
                    "Text Button",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/screen_1");
                },
                buttonText: 'Go to Screen 1',
                color: Color.fromARGB(255, 248, 130, 179),
                elevationShadow: 20, fontSize: 14.0,
                //! Wenn default color benutzt wird kann sie auch null sein und mit einem  (!) am ende kann man die Fehlermeldung umgehen. (Wir sagen das wir davon ausgehen das die color niemals null sein wird)
              ),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/screen_2");
                },
                buttonText: 'Go to Screen 2',
                color: Color.fromARGB(255, 133, 1, 56),
                elevationShadow: 20, fontSize: 14.0,
                //! Wenn default color benutzt wird kann sie auch null sein und mit einem  (!) am ende kann man die Fehlermeldung umgehen. (Wir sagen das wir davon ausgehen das die color niemals null sein wird)
              ),
              const SizedBox(
                width: 30,
              ),
              Switch(
                  value: Provider.of<ThemeService>(
                    context,
                  ).isDark,
                  onChanged: (value) {
                    Provider.of<ThemeService>(context, listen: false)
                        .toggleTheme();
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
