import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:nativedesign/presentation/home/platformWrapper.dart';

import '../../theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double value = 0;
  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: const Text(
          "Home",
          style: toolbarTextStyle,
        ),
        cupertino: (_, __) => CupertinoNavigationBarData(
          transitionBetweenRoutes: false,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PlatformSlider(
              value: value,
              onChanged: (v) {
                setState(() {
                  value = v;
                });
              },
            ),
            PlatformIconButton(
              onPressed: () {
                print("Icon Button Pressed");
              },
              // icon: const Icon(Icons.info),
              materialIcon: const Icon(Icons.info),
              cupertinoIcon: const Icon(CupertinoIcons.info),
            ),
            // Icon(PlatformIcons(context).info),
            const SizedBox(
              height: 20,
            ),
            PlatformCircularProgressIndicator(),
            const SizedBox(
              height: 20,
            ),
            PlatformWidget(
              cupertino: (_, __) => Container(
                height: 20,
                width: 40,
                color: Colors.amber,
              ),
              material: (_, __) => Container(
                height: 20,
                width: 40,
                color: Colors.deepOrange,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            PlatWrapper(
              material: Container(
                height: 20,
                width: 40,
                color: Colors.blue,
              ),
              cupertino: Container(
                height: 20,
                width: 40,
                color: Colors.green,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            PlatformWidgetBuilder(
              material: (_, child, __) => InkWell(
                child: child,
                onTap: () {
                  print("Tab Android");
                },
              ),
              cupertino: (_, child, __) => GestureDetector(
                child: child,
                onTap: () {
                  print("Tab IOS");
                },
              ),
              child: Container(
                height: 50,
                width: 100,
                color: Colors.teal,
                child: const Center(
                  child: Text("Button"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
