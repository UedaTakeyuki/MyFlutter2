import 'package:flutter/material.dart';
import './home_b.dart';

class HomeA extends StatelessWidget {
  const HomeA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("A")),
      body: Column(
        children: [
          const Text("A"),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const HomeB(),
                ),
              );
            },
            child: const Text("B"),
          ),
        ],
      ),
    );
  }
}
