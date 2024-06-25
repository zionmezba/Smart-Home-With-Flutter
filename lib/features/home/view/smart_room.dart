import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:dynamic_tabbar/dynamic_tabbar.dart';
import 'package:smart_home/utils/theme/colors.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:smart_home/features/home/widgets/slider_widget.dart';

class SmartRoom extends StatelessWidget {
  const SmartRoom({Key? key, this.isActive = true}) : super(key: key);
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: ZColors.primary,
        appBar: AppBar(
          backgroundColor: ZColors.primary,
          leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(
              FluentIcons.ios_arrow_ltr_24_filled,
              color: Colors.white,
            ),
          ),
          title: const Text(
            "Living Room",
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AnimatedToggleSwitch.dual(
                current: isActive ? 1 : 0,
                first: 0,
                height: 40,
                spacing: 2,
                second: 1,
                active: isActive,
                styleBuilder: (value) => ToggleStyle(
                    backgroundColor: ZColors.primary,
                    indicatorColor:
                        isActive ? ZColors.secondary : ZColors.secondary2),
                style: const ToggleStyle(
                  borderColor: Colors.transparent,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(66, 0, 0, 0),
                      spreadRadius: 4,
                      blurRadius: 5,
                      offset: Offset(0, 1.5),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: DynamicTabBarWidget(
            dynamicTabs: [
              TabData(
                index: 1,
                title: const Tab(
                  height: 120,
                  child: Row(
                    children: [
                      SizedBox(width: 25),
                      Column(
                        children: [
                          Icon(
                            FluentIcons.tv_16_filled,
                            size: 60,
                            color: ZColors.secondary2,
                          ),
                          Text(
                            "Smart TV",
                            style: TextStyle(
                                color: ZColors.secondary2,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "LG AI",
                            style: TextStyle(
                                color: ZColors.secondary2,
                                fontSize: 18,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      SizedBox(width: 25),
                    ],
                  ),
                ),
                content: const Center(
                  child: Text('Content for Tab 1'),
                ),
              ),
              TabData(
                index: 2,
                title: const Tab(
                  height: 120,
                  child: Row(
                    children: [
                      SizedBox(width: 25),
                      Column(
                        children: [
                          Icon(
                            FluentIcons.weather_snowflake_20_filled,
                            size: 60,
                            color: ZColors.secondary,
                          ),
                          Text(
                            "Air Conditionar",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "LG S3",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      SizedBox(width: 25),
                    ],
                  ),
                ),
                content: Expanded(child: SliderWidget()),
              ),
              TabData(
                index: 3,
                title: const Tab(
                  height: 120,
                  child: Row(
                    children: [
                      SizedBox(width: 25),
                      Column(
                        children: [
                          Icon(
                            FluentIcons.router_20_filled,
                            size: 60,
                            color: ZColors.secondary2,
                          ),
                          Text(
                            "Router",
                            style: TextStyle(
                                color: ZColors.secondary2,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "D-Link 420",
                            style: TextStyle(
                                color: ZColors.secondary2,
                                fontSize: 18,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      SizedBox(width: 25),
                    ],
                  ),
                ),
                content: const Center(
                  child: Text('Content for Tab 1'),
                ),
              ),
            ],
            isScrollable: true,
            onTabControllerUpdated: (controller) {},
            onTabChanged: (index) {},
            onAddTabMoveTo: MoveToTab.last,
            showBackIcon: false,
            showNextIcon: false,

            // Default Tab properties can also be updated
            padding: const EdgeInsets.all(15),
            indicatorColor: Colors.transparent,
            dividerColor: Colors.transparent,
          ),
        ),
      ),
    );
  }
}
