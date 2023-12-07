import 'package:flutter/material.dart';
import 'dart:math';
import 'package:scroll_to_index/scroll_to_index.dart';

class ScrollToIndexDemoPage extends StatefulWidget {
  const ScrollToIndexDemoPage({super.key});

  @override
  State<ScrollToIndexDemoPage> createState() => _ScrollToIndexDemoPageState();
}

class _ScrollToIndexDemoPageState extends State<ScrollToIndexDemoPage> {
  static const maxCount = 100;

  AutoScrollController? controller;

  final random = Random();

  final scrollDirection = Axis.vertical;

  late List<List<int>> randomList;

  @override
  void initState() {
    super.initState();
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.paddingOf(context).bottom),
        axis: scrollDirection);
    randomList = List.generate(maxCount,
        (index) => <int>[index, (1000 * random.nextDouble().toInt())]);
  }

  Widget _getRow(int index, double height) {
    return AutoScrollTag(
        key: ValueKey(index),
        controller: controller!,
        index: index,
        child: Container(
          padding: const EdgeInsets.all(8),
          alignment: Alignment.topCenter,
          height: height,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.lightBlue, width: 4),
              borderRadius: BorderRadius.circular(12)),
          child: Text('index: $index, height: $height'),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Scroll To Index Demo Page")),
      body: ListView(
        scrollDirection: scrollDirection,
        controller: controller,
        children: randomList.map<Widget>((data) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: _getRow(data[0], max(data[1].toDouble(), 50.0)),
          );
        }).toList(),
      ),
      persistentFooterButtons: <Widget>[
        TextButton(
            onPressed: () async {
              await controller!
                  .scrollToIndex(13, preferPosition: AutoScrollPosition.begin);
              controller!.highlight(13);
            },
            child: const Text("scroll to 13"))
      ],
    );
  }
}
