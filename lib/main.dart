import 'package:flutter/material.dart';

import 'package:flutter_application_1/views/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Week3Page(),
        Week4Page.routeName: (context) => Week4Page()
      },
    );
  }
}
