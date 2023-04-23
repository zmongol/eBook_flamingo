import 'package:flutter/material.dart';
import 'package:mongol/mongol.dart';

class ReadingScreen extends StatelessWidget {
  const ReadingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("abc"),
      ),
      body: SingleChildScrollView(
        child: MongolText("data"),
      ),
    );
  }
}