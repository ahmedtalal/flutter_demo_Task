import 'package:flutter/material.dart';
import 'package:flutter_demo_task/app/config/screen_handler.dart';
import 'package:flutter_demo_task/app/core/constans/app_colors.dart';
import 'package:flutter_demo_task/app/core/constans/strings.dart';

class GrocerySection3Widget extends StatelessWidget {
  const GrocerySection3Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        ContainerItemViewer(
          title: "Home Address",
          subtitle1: "Mustafa St.Non",
          subtitle2: "Street x12",
        ),
        ContainerItemViewer(
          title: "Home Address",
          subtitle1: "Mustafa St.Non",
          subtitle2: "Street x12",
        ),
      ],
    );
  }
}

class ContainerItemViewer extends StatelessWidget {
  const ContainerItemViewer({
    required this.title,
    required this.subtitle1,
    required this.subtitle2,
    Key? key,
  }) : super(key: key);
  final String title, subtitle1, subtitle2;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: ScreenHandler.getScreenWidth(context) / 2.5,
      margin: const EdgeInsets.all(6),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey, width: 0.2),
      ),
      child: Row(
        children: [
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.customeColor7,
            ),
          ),
          const SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 14,
                  fontFamily: appFont_regular,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                subtitle1,
                style: const TextStyle(
                  fontSize: 12,
                  fontFamily: appFont_regular,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Text(
                subtitle2,
                style: const TextStyle(
                  fontSize: 13,
                  fontFamily: appFont_regular,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
