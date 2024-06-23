import 'package:flutter/material.dart';
import 'package:smart_home/bottomNav.dart';
import 'package:smart_home/utils/theme/colors.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:smart_home/utils/constants/images.dart';
import 'package:smart_home/features/home/view/Home.dart';
import 'package:smart_home/features/home/view/stats.dart';
import 'package:smart_home/features/home/view/settings.dart';

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

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 1;
  final List<Widget> pages = [const Settings(), const Home(), const Stats()];

  void onTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[currentIndex],
        backgroundColor: ZColors.primary,
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 70,
          backgroundColor: ZColors.primary,
          centerTitle: true,
          leading: const Icon(
            Iconsax.category,
            size: 30,
            color: ZColors.secondary2,
          ),
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Manarat',
                style: TextStyle(
                    color: ZColors.white, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          actions: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 20 * 2,
                  height: 20 * 2,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: ZColors.secondary,
                    border: Border.all(
                      color: ZColors.secondary,
                      width: 4.0, // Adjust ring width as needed
                    ),
                  ),
                ),
                const CircleAvatar(
                  radius: 18,
                  backgroundImage: AssetImage(ZImages.avatar1),
                  backgroundColor: ZColors.secondary,
                )
              ],
            )
          ],
        ),
        bottomNavigationBar: BottomNavBar(
          currentIndex: currentIndex,
          onTapped: onTapped,
        ));
  }
}