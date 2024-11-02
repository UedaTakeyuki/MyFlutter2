import 'package:flutter/material.dart';
import './home_a.dart';

class HomeB extends StatelessWidget {
  const HomeB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("B"),
      ),
      body: Column(
        children: [
          const Text("B"),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const HomeA(),
                ),
              );
            },
            child: const Text("A"),
          ),
        ],
      ),
    );
  }
}
