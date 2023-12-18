import 'package:flutter/material.dart';

class HonorDemoPage extends StatelessWidget {
  const HonorDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Honor Demo Page"),
      ),
      body: Center(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return const HonorPage();
                    },
                    fullscreenDialog: true));
              },

              /// Hero  tag 共享
              child: Hero(
                tag: "image",
                child: Image.asset(
                  "images/cat.png",
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HonorPage extends StatelessWidget {
  const HonorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: InkWell(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Container(
          alignment: Alignment.center,
          child: Hero(
            tag: "image",
            child: Image.asset(
              "images/cat.png",
              fit: BoxFit.cover,
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).width,
            ),
          ),
        ),
      ),
    );
  }
}
