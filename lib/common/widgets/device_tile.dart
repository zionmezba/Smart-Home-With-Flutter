import 'package:flutter/material.dart';
import 'package:smart_home/utils/theme/colors.dart';
import 'package:smart_home/features/home/view/smart_room.dart';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';

class DeviceTile extends StatelessWidget {
  const DeviceTile({
    super.key,
    required this.icon,
    this.isActive = false,
    required this.name,
    required this.brand,
    required this.tabName,
  });

  final IconData icon;
  final bool isActive;
  final String name;
  final String brand;
  final String tabName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SmartRoom(
            isActive: isActive,
            roomName: tabName,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: isActive
                    ? const Color.fromARGB(171, 0, 0, 0)
                    : const Color(0xFF46475E),
              ),
              BoxShadow(
                color: isActive
                    ? const Color.fromARGB(211, 46, 46, 62)
                    : const Color(0xFF46475E),
                spreadRadius: -110.0,
                blurRadius: 10.0,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      icon,
                      size: 60,
                      color: isActive ? ZColors.secondary : ZColors.secondary2,
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: AnimatedToggleSwitch.dual(
                        current: isActive ? 1 : 0,
                        first: 0,
                        second: 1,
                        active: isActive,
                        styleBuilder: (value) => ToggleStyle(
                            backgroundColor: ZColors.primary,
                            indicatorColor: isActive
                                ? ZColors.secondary
                                : ZColors.secondary2),
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
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        maxLines: 1,
                        brand,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w200),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
