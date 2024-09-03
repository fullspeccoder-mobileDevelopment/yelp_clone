import 'package:flutter/material.dart';
import 'package:keiko_food/helper/themes.dart';
import 'package:keiko_food/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Themes.lightTheme(),
      darkTheme: Themes.darkTheme(),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
