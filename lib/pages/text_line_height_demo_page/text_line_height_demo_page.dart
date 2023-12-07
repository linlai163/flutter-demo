import 'package:flutter/material.dart';
import 'package:flutter_pratical_experience/utils/global_variables.dart';

/// Text 行间距的设置方案
/// 因为 Flutter 没有 Line Space ，只有字体权重
/// 这里利用了 fontSize 和 leading 的特性去模拟行高

class TextLineHeightDemoPage extends StatelessWidget {
  const TextLineHeightDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    const double leading = 1.5;

    const double fontSize = 16;
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextLineHeightDemoPage"),
      ),
      body: Container(
        color: GlobalVariables.greyBackgroundCOlor,
        margin: const EdgeInsets.all(20),

        ///利用 Transform 偏移将对应权重部分位置
        child: Transform.translate(
          offset: const Offset(0, -fontSize * leading / 2),
          child: const Text(
            textContent,
            strutStyle:
                StrutStyle(forceStrutHeight: true, height: 1, leading: leading),
            style: TextStyle(
              fontSize: fontSize,
              color: Colors.black,
              //backgroundColor: Colors.greenAccent),
            ),
          ),
        ),
      ),
    );
  }
}

const textContent =
    "Today I was amazed to see the usually positive and friendly VueJS community descend into a bitter war. Two weeks ago Vue creator Evan You released a Request for Comment (RFC) for a new function-based way of writing Vue components in the upcoming Vue 3.0. Today a critical "
    "Reddit thread followed by similarly "
    "critical comments in a Hacker News thread caused a "
    "flood of developers to flock to the original RFC to "
    "voice their outrage, some of which were borderline abusive. "
    "It was claimed in various places that";
