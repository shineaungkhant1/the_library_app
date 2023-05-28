import 'package:flutter/material.dart';
import 'package:the_library_app/pages/bottom_nav_bar.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Library App',
      debugShowCheckedModeBanner: false,
      home:BottomNavBar(),
    );
  }
}


