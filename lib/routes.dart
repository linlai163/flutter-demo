import 'package:flutter/material.dart';
import 'package:flutter_pratical_experience/widgets/container_async_route_page.dart';

import 'pages/controller_demo_page/controller_demo_page.dart'
    deferred as controller_demo_page;

Map<String, WidgetBuilder> routers = {
  "文本输入框简单的 Controller": (context) {
    return ContainerAsyncRouterPage(controller_demo_page.loadLibrary(),
        (context) {
      return controller_demo_page.ControllerDemoPage();
    });
  },
};
