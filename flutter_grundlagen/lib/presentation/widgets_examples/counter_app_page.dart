import 'package:flutter/material.dart';

class CounterAppPage extends StatefulWidget {
  const CounterAppPage({Key? key}) : super(key: key);

  @override
  State<CounterAppPage> createState() => _CounterAppPageState();
}

class _CounterAppPageState extends State<CounterAppPage> {
  int _counter = 0;

  void _incementcounter() {
    setState(() {
      _counter++;
    });
  }

  void _decementcounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          _counter < 20 ? const Color.fromARGB(255, 49, 49, 49) : Colors.white,
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
        title: const Text("Bubble Zähler"),
      ),
      body: Center(
        child: Material(
          elevation: 15,
          borderRadius: BorderRadius.circular(15),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: _counter < 20 ? Colors.grey : Colors.amber),
            height: 200,
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Bubbles"),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  _counter.toString(),
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              onPressed: () => _incementcounter(),
              backgroundColor: const Color.fromARGB(255, 2, 78, 141),
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: () => _decementcounter(),
              backgroundColor: const Color.fromARGB(255, 141, 2, 2),
              child: const Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}
