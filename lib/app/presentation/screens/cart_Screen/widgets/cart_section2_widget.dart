import 'package:flutter/material.dart';
import 'package:flutter_demo_task/app/core/constans/app_colors.dart';
import 'package:flutter_demo_task/app/core/constans/strings.dart';
import 'package:flutter_demo_task/app/data/models/cart_item_model.dart';

class CartSection2Widget extends StatelessWidget {
  const CartSection2Widget({super.key});
  static const List<CartItemModel> cartItems = [
    CartItemModel(
      containerColor: AppColors.customeColor1,
      title1: "Turkish steak",
      title2: "137 Grams",
      title3: "\$ 25",
      count: 2,
    ),
    CartItemModel(
      containerColor: AppColors.customeColor2,
      title1: "Salman",
      title2: "2 Serving",
      title3: "\$ 30",
      count: 1,
    ),
    CartItemModel(
      containerColor: AppColors.customeColor3,
      title1: "Red Juice",
      title2: "1 Bottle",
      title3: "\$ 25",
      count: 3,
    ),
    CartItemModel(
      containerColor: AppColors.customeColor4,
      title1: "Cola",
      title2: "1 Bottle",
      title3: "\$ 11",
      count: 2,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Cart",
          style: TextStyle(
            fontSize: 18,
            fontFamily: appFont_bold,
          ),
        ),
        const SizedBox(height: 20),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: cartItems
              .map(
                (e) => CartItemViewer(
                  containerColor: e.containerColor,
                  title1: e.title1,
                  title2: e.title2,
                  title3: e.title3,
                  count: e.count,
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}

class CartItemViewer extends StatelessWidget {
  const CartItemViewer({
    required this.containerColor,
    required this.title1,
    required this.title2,
    required this.title3,
    required this.count,
    super.key,
  });
  final Color containerColor;
  final String title1, title2, title3;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Container(
              height: 70,
              width: 70,
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: containerColor,
              ),
            ),
            const SizedBox(width: 25),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title1,
                  style: const TextStyle(
                    fontSize: 16,
                    fontFamily: appFont_regular,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  title2,
                  style: TextStyle(
                    fontSize: 11,
                    fontFamily: appFont_regular,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[400],
                  ),
                ),
                Text(
                  title3,
                  style: const TextStyle(
                    fontSize: 18,
                    fontFamily: appFont_regular,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(width: 60),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blue,
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.remove,
                    size: 40,
                    color: AppColors.customeColor4,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Text(
              count.toString(),
              style: const TextStyle(
                fontSize: 20,
                fontFamily: appFont_bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(width: 10),
            InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blue,
                ),
                child: const Icon(
                  Icons.add,
                  size: 40,
                  color: AppColors.customeColor4,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
