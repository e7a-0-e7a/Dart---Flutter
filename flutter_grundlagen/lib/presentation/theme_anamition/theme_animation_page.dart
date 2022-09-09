import 'package:flutter/material.dart';
import 'package:fluttergrundlagen/application/theme_service.dart';
import 'package:fluttergrundlagen/presentation/theme_anamition/widgets/moon.dart';
import 'package:fluttergrundlagen/presentation/theme_anamition/widgets/stars.dart';
import 'package:fluttergrundlagen/presentation/theme_anamition/widgets/sun.dart';
import 'package:fluttergrundlagen/presentation/theme_anamition/widgets/switch.dart';
import 'package:provider/provider.dart';

class ThemeAnimationPage extends StatelessWidget {
  final String headerText;

  const ThemeAnimationPage({Key? key, required this.headerText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Consumer<ThemeService>(builder: (context, themeService, child) {
      return Scaffold(
        backgroundColor: themeData.scaffoldBackgroundColor,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: themeData.appBarTheme.color,
          titleTextStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              fontFamily: "JetBrains Mono",
              fontStyle: FontStyle.normal,
              letterSpacing: 3),
          title: const Text("Theme Mode"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Material(
              borderRadius: BorderRadius.circular(15),
              elevation: 20,
              child: ConstrainedBox(
                constraints: const BoxConstraints(minWidth: double.infinity),
                child: Container(
                  height: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      colors: themeService.isDark
                          ? const [
                              Color(0xFF94A9FF),
                              Color(0xFF6B66CC),
                              Color(0xFF200F75),
                            ]
                          : const [
                              Color(0xDDFFFA66),
                              Color(0xDDFFA057),
                              Color(0xDD940B99),
                            ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 70,
                        right: 50,
                        child: AnimatedOpacity(
                          duration: const Duration(milliseconds: 200),
                          opacity: themeService.isDark ? 1 : 0,
                          child: const Stars(),
                        ),
                      ),
                      Positioned(
                        left: 60,
                        top: 150,
                        child: AnimatedOpacity(
                          duration: const Duration(milliseconds: 200),
                          opacity: themeService.isDark ? 1 : 0,
                          child: const Stars(),
                        ),
                      ),
                      Positioned(
                        left: 50,
                        top: 50,
                        child: AnimatedOpacity(
                          duration: const Duration(milliseconds: 200),
                          opacity: themeService.isDark ? 1 : 0,
                          child: const Stars(),
                        ),
                      ),
                      Positioned(
                        left: 200,
                        top: 40,
                        child: AnimatedOpacity(
                          duration: const Duration(milliseconds: 200),
                          opacity: themeService.isDark ? 1 : 0,
                          child: const Stars(),
                        ),
                      ),
                      Positioned(
                        right: 200,
                        top: 100,
                        child: AnimatedOpacity(
                          duration: const Duration(milliseconds: 200),
                          opacity: themeService.isDark ? 1 : 0,
                          child: const Stars(),
                        ),
                      ),
                      AnimatedPositioned(
                        top: themeService.isDark ? 100 : 130,
                        right: themeService.isDark ? 100 : -40,
                        duration: const Duration(milliseconds: 400),
                        child: AnimatedOpacity(
                            duration: const Duration(milliseconds: 300),
                            opacity: themeService.isDark ? 1 : 0,
                            child: const Moon()),
                      ),
                      AnimatedPadding(
                        padding: EdgeInsets.only(
                            top: themeService.isDark ? 110 : 50),
                        duration: const Duration(milliseconds: 200),
                        child: const Center(
                          child: Sun(),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 225,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: themeService.isDark
                                ? themeData.appBarTheme.color
                                : themeData.colorScheme.primary,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                Provider.of<ThemeService>(context).isDark
                                    ? "Zu Dunkel?"
                                    : "Zu Hell?",
                                style: themeData.textTheme.headline1!.copyWith(
                                    fontSize: 21,
                                    fontWeight: FontWeight.w600,
                                    height: 0.9),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Text(
                                Provider.of<ThemeService>(context).isDark
                                    ? "Mache es Hell"
                                    : "Mache es Dunkel",
                                style: themeData.textTheme.bodyText1!
                                    .copyWith(fontSize: 18, height: 0.9),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              const ThemeSwitcher(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
