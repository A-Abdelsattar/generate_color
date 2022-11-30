import 'package:flutter/material.dart';
import 'dart:math' as math;

class GenerateRandomColor extends StatefulWidget {
  @override
  State<GenerateRandomColor> createState() => _GenerateRandomColorState();
}

class _GenerateRandomColorState extends State<GenerateRandomColor> {
  Color color = Colors.green;
  var code;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  color = Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                      .withOpacity(1.0);
                  code=Color((math.Random().nextDouble() * 0xFFFFFF).toInt());
                });
              },
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: color),
                child: Center(child: Text('$code',style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
