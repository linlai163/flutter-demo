import 'package:flutter/material.dart';

class ScrollListenerDemoPage extends StatefulWidget {
  const ScrollListenerDemoPage({super.key});

  @override
  State<ScrollListenerDemoPage> createState() => _ScrollListenerDemoPageState();
}

class _ScrollListenerDemoPageState extends State<ScrollListenerDemoPage> {
  final ScrollController _scrollController = ScrollController();

  bool isEnd = false;

  double offset = 0;

  String notify = "";

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        offset = _scrollController.offset;
        isEnd = _scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Scroll Listener Demo Page")),
      body: Container(
        alignment: Alignment.center,
        child: NotificationListener(
          onNotification: (dynamic notification) {
            String notify = "";
            if (notification is ScrollNotification) {
              notify = "scroll end";
            } else if (notification is ScrollStartNotification) {
              notify = "scroll start";
            } else if (notification is UserScrollNotification) {
              notify = "user scroll";
            } else if (notification is ScrollUpdateNotification) {
              notify = "scroll update";
            }
            setState(() {
              this.notify = notify;
            });
            return false;
          },
          child: ListView.builder(
            controller: _scrollController,
            itemCount: 100,
            itemBuilder: (context, index) {
              return Container(
                height: 60,
                alignment: Alignment.center,
                child: Text("Item $index"),
              );
            },
          ),
        ),
      ),
      persistentFooterButtons: <Widget>[
        TextButton(
          onPressed: () {
            _scrollController.animateTo(0,
                duration: const Duration(seconds: 3),
                curve: Curves.bounceInOut);
          },
          child: Text("Position: ${offset.floor()}"),
        ),
        const SizedBox(
          width: 0.3,
          height: 0.3,
        ),
        TextButton(
          onPressed: () {},
          child: Text(notify),
        ),
        Visibility(
            visible: isEnd,
            child: TextButton(
              child: const Text('到达底部'),
              onPressed: () {},
            ))
      ],
    );
  }
}
