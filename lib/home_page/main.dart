import 'package:flutter/material.dart';
import 'package:movie_app/home_page/home_pg.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Navigator lesson",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple.shade200),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

