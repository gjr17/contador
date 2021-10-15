import 'package:flutter/material.dart';
//QUILOMBO
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Curso Git-GitHUB',
      theme: ThemeData(
          backgroundColor: Colors.redAccent, primarySwatch: Colors.red),
      home: const MyHomePage(title: 'Curso Git-GitHUB'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
//El Rey del Mundo
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
        ),
      ),
      body: Center(
        child: Column(
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Boton Presionado:',
              style: TextStyle(color: Colors.redAccent, fontSize: 15),
            ),
            Text(
              '$_counter',
              style: TextStyle(color: Colors.redAccent, fontSize: 200),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Sumar',
        child: const Icon(Icons.add),
      ),
    );
  }
}
