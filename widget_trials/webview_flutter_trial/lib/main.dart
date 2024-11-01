import 'package:flutter/material.dart';
import 'package:webview_flutter_trial/webview.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: const Text('Encyclo List'),
      centerTitle: true,
    ),
    body: const WebView(),
  )));
}
