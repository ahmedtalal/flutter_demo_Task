import 'package:flutter/material.dart';
import 'package:flutter_demo_task/app/config/screen_handler.dart';
import 'package:flutter_demo_task/app/core/constans/app_colors.dart';
import 'package:flutter_demo_task/app/core/constans/strings.dart';

class GrocerySection6Widget extends StatelessWidget {
  const GrocerySection6Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: ScreenHandler.getScreenWidth(context) / 1,
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: AppColors.customeColor5,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            width: 100,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Mege",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: appFont_bold,
                  color: Colors.red,
                ),
              ),
              const Text(
                "WHOPPER",
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: appFont_bold,
                  color: AppColors.customeColor8,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    "\$ 17",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: appFont_bold,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "\$ 32",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: appFont_bold,
                      color: Colors.white,
                      decoration: TextDecoration.lineThrough,
                      decorationThickness: 5,
                    ),
                  ),
                ],
              ),
              const Text(
                "Available until 23 december 2022",
                style: TextStyle(
                  fontSize: 8,
                  fontFamily: appFont_bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
