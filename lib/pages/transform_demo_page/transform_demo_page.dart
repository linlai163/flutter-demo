import 'package:flutter/material.dart';
import 'package:flutter_pratical_experience/utils/global_variables.dart';

class TransformDemoPage extends StatefulWidget {
  const TransformDemoPage({super.key});

  @override
  State<TransformDemoPage> createState() => _TransformDemoPageState();
}

class _TransformDemoPageState extends State<TransformDemoPage> {
  Widget myAvatar(context) {
    return Transform.translate(
      offset: const Offset(0, -150),
      child: Container(
        width: 72,
        height: 72,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: Theme.of(context).cardColor, blurRadius: 4.0)
            ],
            shape: BoxShape.circle,
            image: const DecorationImage(
                fit: BoxFit.cover, image: AssetImage('images/cat.png'))),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: GlobalVariables.backgroundColor,
        appBar: AppBar(title: const Text("Transform Demo Page")),
        body: Container(
            alignment: Alignment.center,
            child: Card(
              margin: const EdgeInsets.all(10),
              child: Container(
                  height: 200,
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      myAvatar(context),
                      const Text(
                        "Flutter is Google's portable UI toolkit for crafting "
                        "beautiful, natively compiled applications for mobile, "
                        "web, and desktop from a single codebase. ",
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                        maxLines: 3,
                        style: TextStyle(),
                      )
                    ],
                  )),
            )));
  }
}
