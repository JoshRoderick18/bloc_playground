import 'package:flutter/material.dart';

class BlocCounterScreen extends StatelessWidget {
  const BlocCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BLoC Counter'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.refresh_rounded))],
      ),
      body: const Center(child: Text('Counter value: xxxx')),
      floatingActionButton: Column(
        mainAxisAlignment: .end,
        children: [
          FloatingActionButton(heroTag: '1', child: const Text('+3'), onPressed: () {}),
          FloatingActionButton(heroTag: '2', child: const Text('+2'), onPressed: () {}),
          FloatingActionButton(heroTag: '3', child: const Text('+1'), onPressed: () {}),
        ],
      ),
    );
  }
}
