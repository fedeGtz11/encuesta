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
      debugShowCheckedModeBanner: false,
      title: 'Encuestas',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purpleAccent),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
