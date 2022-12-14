import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_demo_task/app/core/constans/app_colors.dart';
import 'package:flutter_demo_task/app/core/constans/strings.dart';
import 'package:flutter_demo_task/app/data/models/explore_item_model.dart';

class GrocerySection4Widget extends StatelessWidget {
  const GrocerySection4Widget({super.key});
  static List<ExploreItemModel> itemList = const [
    ExploreItemModel(containerColor: AppColors.customeColor1, title: "Steak"),
    ExploreItemModel(
        containerColor: AppColors.customeColor2, title: "Vegetables"),
    ExploreItemModel(
        containerColor: AppColors.customeColor3, title: "Beverges"),
    ExploreItemModel(containerColor: AppColors.customeColor4, title: "Fish"),
    ExploreItemModel(containerColor: AppColors.customeColor5, title: "Juice"),
    ExploreItemModel(containerColor: AppColors.customeColor3, title: "Steak"),
    ExploreItemModel(containerColor: AppColors.customeColor5, title: "Juice"),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Explore by category",
          style: TextStyle(
            fontSize: 14,
            fontFamily: appFont_bold,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: itemList
                .map((e) => ExploreItemViewer(
                      containerColor: e.containerColor,
                      title: e.title,
                    ))
                .toList(),
          ),
        )
      ],
    );
  }
}

class ExploreItemViewer extends StatelessWidget {
  const ExploreItemViewer({
    required this.containerColor,
    required this.title,
    super.key,
  });
  final Color containerColor;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 10,
        top: 10,
      ),
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: containerColor,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontFamily: appFont_regular,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
