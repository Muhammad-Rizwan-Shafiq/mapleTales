import 'package:flutter/material.dart';

class ReadCounter extends StatefulWidget {
  const ReadCounter({super.key});

  @override
  State<StatefulWidget> createState() => ReadCounterState();
}

class ReadCounterState extends State<ReadCounter> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Text(
        'You have read $counter Books!',
        style: const TextStyle(fontSize: 20),
    );
  }
}
