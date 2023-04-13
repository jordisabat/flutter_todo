import 'package:flutter/material.dart';

class TodoNew extends StatelessWidget {
  const TodoNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New todo'),
      ),
      body: const Center(
        child: Text('New todo'),
      ),
    );
  }
}
