import 'package:flutter/material.dart';
import 'package:smart_home/bottomNav.dart';
import 'package:smart_home/utils/theme/colors.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:smart_home/utils/constants/images.dart';
import 'package:smart_home/features/home/view/Home.dart';
import 'package:smart_home/common/widgets/info_tile.dart';
import 'package:smart_home/features/home/view/stats.dart';
import 'package:smart_home/common/widgets/device_tile.dart';
import 'package:smart_home/features/home/view/settings.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';

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
  final List<Widget> pages = [
    const Settings(),
    const Home(),
    const Stats(),
    const Home(),
    const Stats()
  ];

  final List<Widget> deviceTiles = [
    const DeviceTile(
      brand: "Philips Hue",
      icon: FluentIcons.lightbulb_16_regular,
      name: "Light",
      isActive: true,
    ),
    const DeviceTile(
      brand: "LG S3",
      icon: FluentIcons.weather_snowflake_20_regular,
      name: "AC",
      isActive: false,
    ),
    const DeviceTile(
      brand: "Smart TV",
      icon: FluentIcons.tv_16_filled,
      name: "LG AI",
      isActive: false,
    ),
    const DeviceTile(
      brand: "D-Link 422",
      icon: FluentIcons.router_20_filled,
      name: "Router",
      isActive: true,
    ),
  ];

  void onTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 20),
                  const InfoTile(),
                  const SizedBox(height: 30),
                  GridView.builder(
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.0,
                    ),
                    itemCount: deviceTiles.length, 
                    itemBuilder: (BuildContext context, int index) =>
                        deviceTiles[index],
                  ),
                ],
              ),
            ),
            const Center(
              child: Text("Calls"),
            ),
            const Center(
              child: Text("Settings"),
            ),
            const Center(
              child: Text("Settings"),
            ),
            const Center(
              child: Text("Settings"),
            ),
          ],
        ),
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
          bottom: const TabBar(
            dividerColor: Colors.transparent,
            indicatorColor: ZColors.secondary,
            isScrollable: true,
            tabs: [
              Tab(
                  child: Text('Living Room',
                      style: TextStyle(color: ZColors.white))),
              Tab(
                  child:
                      Text('Kitchen', style: TextStyle(color: ZColors.white))),
              Tab(
                  child:
                      Text('Bathroom', style: TextStyle(color: ZColors.white))),
              Tab(
                  child:
                      Text('Kid Room', style: TextStyle(color: ZColors.white))),
              Tab(
                  child: Text('Guest Room',
                      style: TextStyle(color: ZColors.white))),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavBar(
          currentIndex: currentIndex,
          onTapped: onTapped,
        ),
      ),
    );
  }
}
