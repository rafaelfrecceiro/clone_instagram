import 'package:flutter/material.dart';
import 'package:flutter_fundamentos/pages/home/home_page.dart';
import 'package:flutter_fundamentos/pages/profile/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      routes: {
        '/': (context) => const HomePage(),
        '/profile': (context) => const ProfilePage(),
      },
    );
  }
}
