import 'package:care_plans/widgets/carePlans.dart';
import 'package:care_plans/widgets/faq.dart';
import 'package:care_plans/widgets/heading.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(0, 21, 35, 1),
        body: SingleChildScrollView(
          child: Column(
            children: const [
               Heading(),
               CarePlans(),
               Faq()
            ],
          ),
        ),
      ),
    );
  }
}
