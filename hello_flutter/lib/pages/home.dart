import 'package:flutter/material.dart';
import 'package:hello_flutter/types.dart';
//import 'package:flutter/services.dart' show rootBundle;

import 'dart:io';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Pokéctiveness',
            style: TextStyle(
              fontFamily: 'PinyonScript',
            )
        ),
      ),
      body: SingleChildScrollView(child: new Types()),
    );
  }
}