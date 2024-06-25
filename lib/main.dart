import 'package:flutter/material.dart';
import 'package:smart_home/utils/theme/colors.dart';
import 'package:smart_home/features/home/view/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Z-Smart Home',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: ZColors.primary),
          useMaterial3: true,
          fontFamily: 'Poppins'),
      home: const HomePage(),
    );
  }
}
