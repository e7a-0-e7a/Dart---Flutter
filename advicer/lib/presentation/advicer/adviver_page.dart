import 'package:advicer/consts.dart';
import 'package:flutter/material.dart';

class AdviverPage extends StatelessWidget {
  const AdviverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Advicer',
          style: themeData.textTheme.headline1,
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    waitingAdvice,
                    style: themeData.textTheme.headline1,
                  ),
                ),
              ),
              SizedBox(
                height: 200,
                child: Center(
                  child: Container(
                    height: 20,
                    width: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
