import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:drama_app/controller/controller.dart';
import 'package:drama_app/utils/cons.dart';
import 'package:drama_app/view/bottombar/home/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomBar extends StatelessWidget {
  BottomBar({super.key});

  final CurvedNavController _navController = Get.put(CurvedNavController());
  final List<Widget> _screens = const [
    Homescreen(),
    Homescreen(),
    Homescreen(),
    Homescreen(),
  ];

  final List<Widget> _navBarItems = const [
    Icon(Icons.home, size: 30, color: Colors.white),
    Icon(Icons.search, size: 30, color: Colors.white),
    Icon(Icons.favorite_border, size: 30, color: Colors.white),
    Icon(Icons.person_outline, size: 30, color: Colors.white),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Obx(() => _screens[_navController.pageIndex.value]),
      bottomNavigationBar: CurvedNavigationBar(

        index: _navController.pageIndex.value,
        height: 60.0,
        items: _navBarItems,
        color: maincolor,
        buttonBackgroundColor: maincolor,
        backgroundColor: backgroundcolor,

        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 500),
        onTap: (index) {

          _navController.changePage(index);
        },
        letIndexChange: (index) => true, // Allows programmatically changing the index
      ),
    );
  }
}