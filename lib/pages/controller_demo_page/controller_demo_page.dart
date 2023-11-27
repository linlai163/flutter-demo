import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ControllerDemoPage extends StatelessWidget {
  const ControllerDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        alignment: Alignment.center,
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(CupertinoPageRoute(builder: (context) {
              return const EditPage();
            }));
          },
          child: const Text(
            "Click",
            style: TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}

class EditPage extends StatelessWidget {
  const EditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ControllerDemoPage"),
      ),
      extendBody: true,
      body: Column(
        children: [
          const Spacer(),
          Container(
            margin: const EdgeInsets.all(10),
            child: const Center(
              child: TextField(),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
