import 'package:flutter/material.dart';
import 'package:smit_ui/HomeScreen.dart';

void main() {
  runApp(MYAPP());
}

class MYAPP extends StatefulWidget {
  const MYAPP({super.key});

  @override
  State<MYAPP> createState() => _MYAPPState();
}

class _MYAPPState extends State<MYAPP> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HOMESCREEN(),
    );
  }
}
