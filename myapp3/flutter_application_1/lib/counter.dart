import 'package:flutter/material.dart';



void main(List<String> args) {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Benim Projem",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Counter(),
    );
  }
}

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: const Icon(Icons.add),
      ),
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Center(
          child: Text("9174-Arda Samet Cakır"),
        ),
        actions: const [
          Icon(Icons.settings),
          SizedBox(
            width: 5,
          )
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          InkWell(
            onTap: () {
              setState(() {
                counter++;
              });
            },
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              margin: const EdgeInsets.only(bottom: 10),
              alignment: Alignment.center,
              width: 50,
              height: 50,
              child: const Text(
                "+",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          Text("$counter"),
          InkWell(
            onTap: () {
              setState(() {
                counter++;
              });
            },
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              margin: const EdgeInsets.only(top: 10),
              alignment: Alignment.center,
              width: 50,
              height: 50,
              child: const Text(
                "-",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          )
        ]),
      ),
    );
  }
}