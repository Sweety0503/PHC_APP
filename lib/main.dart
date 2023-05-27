import 'package:flutter/material.dart';
import 'package:phc/loginpage.dart';
import 'package:phc/account.dart';
import 'package:phc/forgot.dart';

main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: login(),
    );
  }
}
