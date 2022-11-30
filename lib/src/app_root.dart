import 'package:flutter/material.dart';
import 'package:random_color/screens/generate_random_color.dart';


class AppRoot extends StatelessWidget {
  const AppRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GenerateRandomColor(),
    );
  }
}
