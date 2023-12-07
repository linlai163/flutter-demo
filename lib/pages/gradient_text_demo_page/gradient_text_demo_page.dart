import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class GradientTextDemoPage extends StatefulWidget {
  const GradientTextDemoPage({super.key});

  @override
  State<GradientTextDemoPage> createState() => _GradientTextDemoPageState();
}

class _GradientTextDemoPageState extends State<GradientTextDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Title(
            color: Colors.red, child: const Text("Gradient Text Demo Page")),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          verticalDirection: VerticalDirection.down,
          children: [
            if (kIsWeb)
              const Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text("当前效果不支持 web，请在 app 查看"),
                ),
              ),
            Text(
              '8',
              style: TextStyle(
                  fontSize: 100,

                  /// 2.10 下因为有 shader （Gradient） ， web 下会用 canvas
                  ///编译文本，此时会有  _applySpanStyleToCanvas 时 setUpPaint 的 Rect 为 nul 的问题
                  ///所以添加   fontFeatures 可以在底层渲染时切换回 p+span 标签
                  ///但是目前 p+span 不支持 foreground 的 Paint
                  fontFeatures:
                      kIsWeb ? [const FontFeature.enable("tnum")] : null,
                  foreground: Paint()
                    ..style = PaintingStyle.fill
                    ..strokeWidth = 3
                    ..shader = const LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [Colors.yellow, Colors.black])
                        .createShader(const Rect.fromLTWH(0, 0, 200, 100))),
            ),
            Text(
              '10086',
              style: TextStyle(
                  fontSize: 100,

                  /// 2.10 下因为有 shader （Gradient） ， web 下会用 canvas
                  ///编译文本，此时会有  _applySpanStyleToCanvas 时 setUpPaint 的 Rect 为 nul 的问题
                  ///所以添加   fontFeatures 可以在底层渲染时切换回 p+span 标签
                  ///但是目前 p+span 不支持 foreground 的 Paint
                  fontFeatures:
                      kIsWeb ? [const FontFeature.enable("tnum")] : null,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 2
                    ..shader = const LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [Colors.limeAccent, Colors.cyanAccent])
                        .createShader(const Rect.fromLTWH(0, 0, 200, 100))),
            ),
          ],
        ),
      ),
    );
  }
}
