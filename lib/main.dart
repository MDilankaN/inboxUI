import 'package:demo_inbox/InboxScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inbox Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const InboxScreen(
        title: 'Inbox',
      ),
    );
  }
}
