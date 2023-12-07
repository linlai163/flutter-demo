import 'package:flutter/material.dart';

class ClipDemoPage extends StatelessWidget {
  const ClipDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Clip Demo Page")),
      body: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("BoxDecoration 圆角"),
            Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                  color: Colors.red,
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage("images/cat.png")),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
            ),
            const SizedBox(height: 10),
            const Text("BoxDecoration 圆角 child"),
            Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Image.asset(
                "images/cat.png",
                fit: BoxFit.cover,
                height: 100,
                width: 100,
              ),
            ),
            const SizedBox(height: 10),
            const Text("ClipRect 圆角对 child"),
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              child: Image.asset(
                "images/cat.png",
                fit: BoxFit.cover,
                width: 100,
                height: 100,
              ),
            )
          ],
        ),
      ),
    );
  }
}
