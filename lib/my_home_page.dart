import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  Color _backgroundColor = Colors.white;

  void _incrementCounter() {
    setState(() {
      _counter++;
      if (_counter > 10) {
        _backgroundColor = Colors.redAccent;
      } else if (_counter >= 0) {
        _backgroundColor = Colors.white;
      }
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
      _backgroundColor = Colors.white;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
      if (_counter < 0) {
        _backgroundColor = Colors.blueAccent;
      } else if (_counter < 10) {
        _backgroundColor = Colors.white;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: _incrementCounter,
                  child: const Text(
                    '+',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  )
                ),
                const SizedBox(width: 20.0),
                OutlinedButton(
                    onPressed: _resetCounter,
                    child: const Text(
                      'Reset',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    )
                ),
                const SizedBox(width: 20.0),
                OutlinedButton(
                  onPressed: _decrementCounter,
                  child: const Text(
                    '-',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  )
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
