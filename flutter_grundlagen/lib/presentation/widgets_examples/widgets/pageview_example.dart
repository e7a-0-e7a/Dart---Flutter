import 'package:flutter/material.dart';

class PageViewExample extends StatelessWidget {
  const PageViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.2,
      child: PageView(
        controller: PageController(viewportFraction: 0.95),
        children: [
          Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: SinglePage(
                size: size,
                text:
                    'My RealName ist die Beste. Und das wissen wir alle, niemand ist so gut im nichts tun wie sie!',
                title: 'My RealName',
              )),
          SinglePage(
            size: size,
            text:
                'Rhaven ist super, sie weiss alles, sie macht alles und sowieso ist sie die Beste!',
            title: 'Rhaven',
          )
        ],
      ),
    );
  }
}

class SinglePage extends StatelessWidget {
  final Size size;
  final String title;
  final String text;

  const SinglePage(
      {Key? key, required this.size, required this.title, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.3,
      width: size.width * 0.8,
      decoration: BoxDecoration(
          color: Colors.grey[700], borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              text,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 15),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
