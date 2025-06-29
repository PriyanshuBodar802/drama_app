import 'package:drama_app/view/bottombar/bottombar.dart';
import 'package:drama_app/view/bottombar/home/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(
    Sizer(
      builder: (BuildContext, Orientation, ScreenType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: BottomBar(),
        );
      },
    ),
  );
}
