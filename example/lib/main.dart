// ignore_for_file: public_member_api_docs
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    final Key? key,
  }) : super(key: key);

  @override
  Widget build(final BuildContext context) => MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Plugin example app'),
          ),
          body: const Center(
            child: Text('Atomic Widgets'),
          ),
        ),
      );
}
