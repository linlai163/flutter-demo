import 'package:flutter/material.dart';
import 'package:flutter_pratical_experience/utils/global_variables.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalVariables.greyBackgroundCOlor,
      body: SafeArea(
          child: Container(
        alignment: Alignment.center,
        child: const Text('Hello World'),
      )),
    );
  }
}
