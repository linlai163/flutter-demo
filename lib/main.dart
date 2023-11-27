import 'package:flutter/material.dart';
import 'package:flutter_pratical_experience/pages/home_page/home_page.dart';
import 'package:flutter_pratical_experience/routes.dart';
import 'package:flutter_pratical_experience/utils/global_variables.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "flutter-pratical-experience",
        theme: ThemeData(
          scaffoldBackgroundColor: GlobalVariables.backgroundColor,
          colorScheme: const ColorScheme.light(
            primary: GlobalVariables.secondaryColor,
          ),
          appBarTheme: const AppBarTheme(
            elevation: 0,
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
          ),
          useMaterial3: true, // can remove this line
        ),
        home: const HomePage(),
        routes: routers);
  }
}
