import 'package:flutter/material.dart';
import 'package:flutter_pratical_experience/widgets/container_async_route_page.dart';

import 'pages/controller_demo_page/controller_demo_page.dart'
    deferred as controller_demo_page;
import 'pages/clip_demo_page/clip_demo_page.dart' deferred as clip_demo_page;
import 'pages/scroll_listener_demo_page/scroll_listener_demo_page.dart'
    deferred as scroll_listener_demo_page;
import 'pages/scroll_to_index_demo_page/scroll_to_index_demo_page.dart'
    deferred as scroll_to_index_demo_page;
import 'pages/gradient_text_demo_page/gradient_text_demo_page.dart'
    deferred as gradient_text_demo_page;
import 'pages/transform_demo_page/transform_demo_page.dart'
    deferred as transform_demo_page;
import 'pages/text_line_height_demo_page/text_line_height_demo_page.dart'
    deferred as text_line_height_demo_page;
import 'pages/refresh_demo_page/refresh_demo_page.dart'
    deferred as refresh_demo_page;
import 'pages/refresh_demo_page/refresh_demo_page_2.dart'
    deferred as refresh_demo_page2;
import 'pages/refresh_demo_page/refrsh_demo_page_3.dart'
    deferred as refresh_demo_page3;
import 'pages/position_demo_page/position_demo_page.dart'
    deferred as position_demo_page;
import 'pages/bubble_demo_page/bubble_demo_page.dart'
    deferred as bubble_demo_page;
import 'pages/tag_demo_page/tag_demo_page.dart' deferred as tag_demo_page;

Map<String, WidgetBuilder> routers = {
  "文本输入框简单的 Controller": (context) {
    return ContainerAsyncRouterPage(controller_demo_page.loadLibrary(),
        (context) {
      return controller_demo_page.ControllerDemoPage();
    });
  },
  "实现控件圆角不同组合": (context) {
    return ContainerAsyncRouterPage(clip_demo_page.loadLibrary(), (context) {
      return clip_demo_page.ClipDemoPage();
    });
  },
  "列表滑动监听": (context) {
    return ContainerAsyncRouterPage(scroll_listener_demo_page.loadLibrary(),
        (context) {
      return scroll_listener_demo_page.ScrollListenerDemoPage();
    });
  },
  "列表滑动到指定位置": (context) {
    return ContainerAsyncRouterPage(scroll_to_index_demo_page.loadLibrary(),
        (context) {
      return scroll_to_index_demo_page.ScrollToIndexDemoPage();
    });
  },
  "展示渐变带边框的文本": (context) {
    return ContainerAsyncRouterPage(gradient_text_demo_page.loadLibrary(),
        (context) {
      return gradient_text_demo_page.GradientTextDemoPage();
    });
  },
  "Transform 效果展示": (context) {
    return ContainerAsyncRouterPage(transform_demo_page.loadLibrary(),
        (context) {
      return transform_demo_page.TransformDemoPage();
    });
  },
  "计算另类文本行间距展示": (context) {
    return ContainerAsyncRouterPage(text_line_height_demo_page.loadLibrary(),
        (context) {
      return text_line_height_demo_page.TextLineHeightDemoPage();
    });
  },
  "简单上下刷新 1": (context) {
    return ContainerAsyncRouterPage(refresh_demo_page.loadLibrary(), (context) {
      return refresh_demo_page.RefreshDemoPage1();
    });
  },
  "简单上下刷新 2": (context) {
    return ContainerAsyncRouterPage(refresh_demo_page2.loadLibrary(),
        (context) {
      return refresh_demo_page2.RefreshDemoPage2();
    });
  },
  "简单上下刷新 3": (context) {
    return ContainerAsyncRouterPage(refresh_demo_page3.loadLibrary(),
        (context) {
      return refresh_demo_page3.RefreshDemoPage3();
    });
  },
  "通过绝对定位布局": (context) {
    return ContainerAsyncRouterPage(position_demo_page.loadLibrary(),
        (context) {
      return position_demo_page.PositionedDemoPage();
    });
  },
  "气泡提示框": (context) {
    return ContainerAsyncRouterPage(bubble_demo_page.loadLibrary(), (context) {
      return bubble_demo_page.BubbleDemoPage();
    });
  },
  "Tag 效果展示": (context) {
    return ContainerAsyncRouterPage(tag_demo_page.loadLibrary(), (context) {
      return tag_demo_page.TagDemoPage();
    });
  }
};
