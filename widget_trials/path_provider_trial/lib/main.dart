import 'package:flutter/material.dart';
import 'package:path_provider_trial/text_from_localfile.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: const Text('Encyclo List'),
      centerTitle: true,
    ),
    body: const TextFromLocalFile(),
  )));
}
