import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(const Surveys());
}

class Surveys extends StatelessWidget {
  const Surveys({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Encuestas'),
    );
  }
}
