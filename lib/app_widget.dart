import 'package:flutter/material.dart';
import 'package:flutter_genesis/src/views/home_view.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Theming
      theme: ThemeData(colorSchemeSeed: Colors.blue),
      home: HomeView(),
    );
  }
}
