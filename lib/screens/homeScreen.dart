import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Sample App'),
      ),
      body: const Center(
        child: Text(
          'ы!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}