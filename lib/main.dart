import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/features/home/view/home_screen.dart';

void main() {
  runApp(const MyApp());
}

// fake push
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
