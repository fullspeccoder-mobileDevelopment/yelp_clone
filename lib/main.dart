import 'package:flutter/material.dart';
import 'package:keiko_food/helper/themes.dart';
import 'package:keiko_food/pages/home.dart';
import 'package:keiko_food/pages/review_grid_photos.dart';
import 'package:keiko_food/pages/review_list/review_list.dart';
import 'package:keiko_food/pages/review_map_locations/review_map_locations.dart';

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
      routes: {
        "/": (_) => const HomePage(),
        "/review_grid_photos": (_) => const ReviewGridPhotos(),
        "/review_list": (_) => const ReviewList(),
        "/review_map_locations": (_) => const ReviewMapLocations(),
      },
    );
  }
}
