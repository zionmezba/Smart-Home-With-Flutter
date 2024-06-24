import 'package:flutter/material.dart';
import 'package:smart_home/utils/theme/colors.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  final bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(backgroundColor: ZColors.primary, body: Container()),
    );
  }
}
