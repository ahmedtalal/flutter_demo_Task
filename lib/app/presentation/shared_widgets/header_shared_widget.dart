import 'package:flutter/material.dart';
import 'package:flutter_demo_task/app/core/constans/app_colors.dart';
import 'package:flutter_demo_task/app/core/constans/strings.dart';

class HeaderSharedWidget extends StatelessWidget {
  const HeaderSharedWidget({required this.title, super.key});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 180,
          height: 55,
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(60),
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(25),
            ),
            color: AppColors.customeColor5,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.location_on_outlined,
                color: Colors.white,
                size: 25,
              ),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 14,
                  fontFamily: appFont_bold,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
        Container(
          width: 55,
          height: 55,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.grey,
              width: 1.5,
            ),
          ),
        ),
      ],
    );
  }
}
