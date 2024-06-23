import 'package:flutter/material.dart';
import 'package:smart_home/utils/theme/colors.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar(
      {super.key, required this.currentIndex, required this.onTapped});
  final int currentIndex;
  final void Function(int) onTapped;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(90), topRight: Radius.circular(90)),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            backgroundColor: ZColors.light1,
            iconSize: 30.0,
            selectedIconTheme: const IconThemeData(size: 33.0),
            selectedItemColor: ZColors.secondary,
            unselectedItemColor: ZColors.light2,
            selectedFontSize: 0,
            unselectedFontSize: 0,
            currentIndex: currentIndex,
            onTap: onTapped,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Iconsax.setting_4, size: 30),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Iconsax.home_1_copy, size: 30),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Iconsax.chart_21_copy, size: 30),
                label: "",
              ),
            ]),
      ),
    );
  }
}
