// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'drawer.dart';

class CovidResult extends StatelessWidget {
  // final String result;
  // CovidResult(required this.result);
  const CovidResult({Key? key, required this.result}) : super(key: key);

  final String result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: DefaultDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('Covid Result'),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              'Covid Test Result',
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            result.toString(),
            style: TextStyle(fontSize: 25.0),
          ),
        ],
      ),
    );
  }
}
