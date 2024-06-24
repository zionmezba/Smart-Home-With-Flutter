import 'package:flutter/material.dart';
import 'package:smart_home/utils/theme/colors.dart';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';

class DeviceTile extends StatelessWidget {
  const DeviceTile({
    super.key,
    required this.icon,
    this.isActive = false,
    required this.name,
    required this.brand,
  });

  final IconData icon;
  final bool isActive;
  final String name;
  final String brand;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color:
                    isActive ? Color.fromARGB(171, 0, 0, 0) : Color(0xFF46475E),
              ),
              BoxShadow(
                color: isActive
                    ? Color.fromARGB(211, 46, 46, 62)
                    : Color(0xFF46475E),
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
                      color: ZColors.secondary,
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: AnimatedToggleSwitch.dual(
                        current: isActive ? 1 : 0,
                        first: 0,
                        second: 1,
                        active: isActive,
                        styleBuilder: (value) => const ToggleStyle(
                          backgroundColor: ZColors.primary,
                          indicatorColor: Color.fromARGB(255, 187, 255, 0),
                        ),
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
                        brand,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
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
