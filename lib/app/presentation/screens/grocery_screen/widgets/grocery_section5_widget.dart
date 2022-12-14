import 'package:flutter/material.dart';
import 'package:flutter_demo_task/app/core/constans/app_colors.dart';
import 'package:flutter_demo_task/app/core/constans/strings.dart';

class GrocerySection5Widget extends StatelessWidget {
  const GrocerySection5Widget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10, top: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Deals of the day",
            style: TextStyle(
              fontSize: 14,
              fontFamily: appFont_bold,
            ),
          ),
          const SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                DealsItemViewer(
                  isFavorite: false,
                ),
                SizedBox(width: 20),
                DealsItemViewer(
                  isFavorite: true,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class DealsItemViewer extends StatelessWidget {
  const DealsItemViewer({required this.isFavorite, super.key});
  final bool isFavorite;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              height: 100,
              width: 140,
              decoration: BoxDecoration(
                color: AppColors.customeColor4,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            Container(
              width: 26,
              height: 26,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white60,
              ),
              child: Icon(
                isFavorite == false
                    ? Icons.favorite_outline_sharp
                    : Icons.favorite,
                size: 15,
                color: isFavorite == true ? Colors.red : null,
              ),
            ),
          ],
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              "Summer Sun Ice cream pack",
              style: TextStyle(
                fontSize: 12,
                fontFamily: appFont_bold,
                color: Colors.black87,
              ),
            ),
            const Text(
              "Pieces 5",
              style: TextStyle(
                fontSize: 12,
                fontFamily: appFont_bold,
                color: Colors.black38,
              ),
            ),
            Row(
              children: const [
                Icon(
                  Icons.location_on_outlined,
                  size: 15,
                  color: Colors.black38,
                ),
                SizedBox(width: 5),
                Text(
                  "15 Minutes Away",
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: appFont_bold,
                    color: Colors.black38,
                  ),
                ),
              ],
            ),
            Row(
              children: const [
                Text(
                  "\$ 12",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: appFont_bold,
                    color: Colors.red,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  "\$ 10",
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: appFont_bold,
                    color: Colors.black38,
                    decoration: TextDecoration.lineThrough,
                    decorationThickness: 5,
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
