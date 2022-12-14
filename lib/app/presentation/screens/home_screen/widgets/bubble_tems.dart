import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo_task/app/core/constans/strings.dart';

BubbleBottomBarItem bubbleItems({
  required String title,
  required String iamge,
  required Color backgroundColor,
}) {
  return BubbleBottomBarItem(
    title: Text(
      title,
      style: const TextStyle(
        fontFamily: appFont_bold,
        fontSize: 13.0,
        color: Colors.white,
      ),
    ),
    backgroundColor: backgroundColor,
    icon: Image.asset(
      iamge,
      height: 17.0,
      color: const Color.fromARGB(255, 108, 72, 72),
    ),
    activeIcon: Image.asset(
      iamge,
      height: 17.0,
      color: Colors.black,
    ),
  );
}
