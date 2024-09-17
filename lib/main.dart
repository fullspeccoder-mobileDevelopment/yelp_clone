import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:keiko_food/firebase_options.dart';
import 'package:keiko_food/helper/themes.dart';
import 'package:keiko_food/pages/authentication/user_forgot_password.dart';
import 'package:keiko_food/pages/authentication/user_login.dart';
import 'package:keiko_food/pages/authentication/user_register.dart';
import 'package:keiko_food/pages/home.dart';
import 'package:keiko_food/pages/review_entry/review_entry_edit.dart';
import 'package:keiko_food/pages/review_entry/review_entry_photo_zoom.dart';
import 'package:keiko_food/pages/review_entry/review_entry_view.dart';
import 'package:keiko_food/pages/review_grid_photos.dart';
import 'package:keiko_food/pages/review_list/review_list.dart';
import 'package:keiko_food/pages/review_map_locations/review_map_locations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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
        '/user_login': (_) => const UserLogin(),
        '/user_register': (_) => const UserRegister(),
        '/user_forgot_password': (_) => const UserForgotPassword(),
        '/review_entry_view': (_) => const ReviewEntryView(),
        '/review_entry_edit': (_) => const ReviewEntryEdit(),
        '/review_entry_photo_zoom': (_) => const ReviewEntryPhotoZoom(),
      },
    );
  }
}
