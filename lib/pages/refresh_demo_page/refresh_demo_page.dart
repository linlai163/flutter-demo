import 'package:flutter/material.dart';

class RefreshDemoPage1 extends StatefulWidget {
  const RefreshDemoPage1({super.key});

  @override
  State<RefreshDemoPage1> createState() => _RefreshDemoPage1State();
}

class _RefreshDemoPage1State extends State<RefreshDemoPage1> {
  final int pageSize = 30;

  bool disposed = false;

  List<String> dataList = [];

  final ScrollController _scrollController = ScrollController();

  final GlobalKey<RefreshIndicatorState> refreshKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        loadMore();
      }
    });
  }

  Future<void> onRefresh() async {
    await Future.delayed(const Duration(seconds: 2));
    dataList.clear();
    for (int i = 0; i < pageSize; i++) {
      dataList.add("refresh");
    }
    if (disposed) {
      return;
    }
    setState(() {});
  }

  Future<void> loadMore() async {
    await Future.delayed(const Duration(seconds: 2));
    for (int i = 0; i < pageSize; i++) {
      dataList.add("loadmore");
    }
    if (disposed) {
      return;
    }
    setState(() {});
  }

  @override
  void dispose() {
    disposed = true;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Refresh Demo Page")),
      body: RefreshIndicator(
        ///GlobalKey，用户外部获取RefreshIndicator的State，做显示刷新
        key: refreshKey,

        ///下拉刷新触发，返回的是一个Future
        onRefresh: onRefresh,
        child: ListView.builder(
          ///保持ListView任何情况都能滚动，解决在RefreshIndicator的兼容问题。
          physics: const AlwaysScrollableScrollPhysics(),

          ///根据状态返回
          itemBuilder: (context, index) {
            if (index == dataList.length) {
              return Container(
                margin: const EdgeInsets.all(10),
                child: const Align(
                  child: CircularProgressIndicator(),
                ),
              );
            }
            return Card(
              child: Container(
                height: 60,
                alignment: Alignment.centerLeft,
                child: Text("Item ${dataList[index]} $index"),
              ),
            );
          },

          ///根据状态返回数量
          itemCount: (dataList.length >= pageSize)
              ? dataList.length + 1
              : dataList.length,

          ///滑动监听
          controller: _scrollController,
        ),
      ),
    );
  }
}
