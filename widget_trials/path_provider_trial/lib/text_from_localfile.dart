import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:flutter/material.dart';

class TextFromLocalFile extends StatelessWidget {
  const TextFromLocalFile({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getText(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Text(snapshot.data!);
        } else if (snapshot.hasError) {
          return Center(child: Text(snapshot.error.toString()));
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

Future<String> getText() async {
  final directory = await getApplicationSupportDirectory();
  final path = directory.path;
  debugPrint("path: $path");
  final file = File('$path/hoge.txt');

  // ファイルがなかった時だけ書き込む
  if (!await file.exists()) {
//    await file.create();
//    await file.writeAsString('aiueo');
  }

  String data = "あほ";
  // ファイルがあった時だけ読み込む
  if (await file.exists()) {
    data = await file.readAsString();
    debugPrint(data);
  }

  return data;
}
