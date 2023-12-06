import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/register.dart';

void main() {
  runApp(first_program());
}

class first_program extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: register(),
    );
  }
}
