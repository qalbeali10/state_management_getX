// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('second page'),
      ),
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [Text('This is Second Page')],
      ),
    );
  }
}
