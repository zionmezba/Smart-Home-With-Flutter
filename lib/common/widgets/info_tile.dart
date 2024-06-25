import 'package:flutter/material.dart';
import 'package:smart_home/utils/theme/colors.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';

class InfoTile extends StatelessWidget {
  const InfoTile({
    super.key,
    required this.temp,
    required this.humidity,
    required this.powerUsage,
    required this.lightIntensity,
  });

  final int temp;
  final int humidity;
  final int powerUsage;
  final int lightIntensity;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: SizedBox(
        child: Container(
          decoration: BoxDecoration(
            gradient: ZColors.infoTileGrad,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          FluentIcons.temperature_24_regular,
                          color: Colors.white,
                          size: 40,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "$temp C",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontFamily: 'Roboto'),
                            ),
                            const Text(
                              "Temperature",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                        const SizedBox(width: 60),
                        const Icon(
                          FluentIcons.drop_20_filled,
                          size: 40,
                          color: Colors.white,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "$humidity%",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontFamily: 'Roboto'),
                            ),
                            const Text(
                              "Humidity",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          FluentIcons.pulse_20_regular,
                          color: Colors.white,
                          size: 40,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "$powerUsage k",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontFamily: 'Roboto'),
                            ),
                            const Text(
                              "Energy Usage",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'Roboto'),
                            ),
                          ],
                        ),
                        const SizedBox(width: 50),
                        const Icon(
                          FluentIcons.brightness_low_20_regular,
                          size: 40,
                          color: Colors.white,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "$lightIntensity%",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontFamily: 'Roboto'),
                            ),
                            const Text(
                              "Light Intensity",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'Roboto'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
