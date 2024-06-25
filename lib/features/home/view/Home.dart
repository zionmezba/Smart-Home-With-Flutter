import 'package:flutter/material.dart';
import 'package:smart_home/bottomNav.dart';
import 'package:smart_home/utils/theme/colors.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:smart_home/utils/constants/images.dart';
import 'package:smart_home/features/home/view/stats.dart';
import 'package:smart_home/common/widgets/info_tile.dart';
import 'package:smart_home/common/widgets/device_tile.dart';
import 'package:smart_home/features/home/view/settings.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 1;
  final List<Widget> pages = [
    const Settings(),
    const Stats(),
    const HomePage(),
    const Stats()
  ];

  final List<Widget> room1 = [
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
  final List<Widget> room2 = [
    const DeviceTile(
      brand: "Philips Hue",
      icon: FluentIcons.lightbulb_16_regular,
      name: "Light",
      isActive: false,
    ),
    const DeviceTile(
      brand: "LG S3",
      icon: FluentIcons.weather_snowflake_20_regular,
      name: "AC",
      isActive: false,
    ),
    const DeviceTile(
      brand: "Washing Machine",
      icon: FluentIcons.tv_16_filled,
      name: "WM1455HVA",
      isActive: false,
    ),
    const DeviceTile(
      brand: "Lg-LRTLS2403S",
      icon: FluentIcons.router_20_filled,
      name: "Refrigerator",
      isActive: true,
    ),
  ];

  final List<Widget> room3 = [
    const DeviceTile(
      brand: "Philips Hue",
      icon: FluentIcons.lightbulb_16_regular,
      name: "Light",
      isActive: true,
    ),
    const DeviceTile(
      brand: "Geyser",
      icon: FluentIcons.weather_snowflake_20_regular,
      name: "Walton",
      isActive: true,
    ),
    const DeviceTile(
      brand: "Washing Machine",
      icon: FluentIcons.tv_16_filled,
      name: "WM1455HVA",
      isActive: true,
    ),
  ];

  final List<Widget> room4 = [
    const DeviceTile(
      brand: "Philips Hue",
      icon: FluentIcons.lightbulb_16_regular,
      name: "Light",
      isActive: true,
    ),
    const DeviceTile(
      brand: "Samsung",
      icon: FluentIcons.weather_snowflake_20_regular,
      name: "CC Camera",
      isActive: false,
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
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 20),
                  const InfoTile(
                      temp: 24,
                      humidity: 55,
                      powerUsage: 231,
                      lightIntensity: 51),
                  const SizedBox(height: 30),
                  GridView.builder(
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.0,
                    ),
                    itemCount: room1.length,
                    itemBuilder: (BuildContext context, int index) =>
                        room1[index],
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 20),
                  const InfoTile(
                      temp: 28,
                      humidity: 60,
                      powerUsage: 300,
                      lightIntensity: 75),
                  const SizedBox(height: 30),
                  GridView.builder(
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.0,
                    ),
                    itemCount: room2.length,
                    itemBuilder: (BuildContext context, int index) =>
                        room2[index],
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 20),
                  const InfoTile(
                      temp: 23,
                      humidity: 70,
                      powerUsage: 101,
                      lightIntensity: 45),
                  const SizedBox(height: 30),
                  GridView.builder(
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.0,
                    ),
                    itemCount: room3.length,
                    itemBuilder: (BuildContext context, int index) =>
                        room3[index],
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 20),
                  const InfoTile(
                      temp: 24,
                      humidity: 55,
                      powerUsage: 256,
                      lightIntensity: 65),
                  const SizedBox(height: 30),
                  GridView.builder(
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.0,
                    ),
                    itemCount: room4.length,
                    itemBuilder: (BuildContext context, int index) =>
                        room4[index],
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 20),
                  const InfoTile(
                      temp: 27,
                      humidity: 50,
                      powerUsage: 350,
                      lightIntensity: 80),
                  const SizedBox(height: 30),
                  GridView.builder(
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.0,
                    ),
                    itemCount: room1.length,
                    itemBuilder: (BuildContext context, int index) =>
                        room1[index],
                  ),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: ZColors.primary,
        bottomNavigationBar: BottomNavBar(
          currentIndex: currentIndex,
          onTapped: onTapped,
        ),
      ),
    );
  }
}
