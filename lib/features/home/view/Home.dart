import 'package:flutter/material.dart';
import 'package:smart_home/utils/theme/colors.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  final bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ZColors.primary,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: SizedBox(
                height: 10,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.white,
                              width: 1.0, // Adjust thickness as needed
                            ),
                          ),
                        ),
                        child: Text('Living Room',
                            style: TextStyle(
                              color: isActive ? ZColors.white : ZColors.white,
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(flex: 10, child: Container())
          ],
        ),
      ),
    );
  }
}
