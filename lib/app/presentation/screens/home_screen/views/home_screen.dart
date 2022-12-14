import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo_task/app/core/constans/app_colors.dart';
import 'package:flutter_demo_task/app/core/constans/strings.dart';
import 'package:flutter_demo_task/app/presentation/screens/cart_Screen/views/cart_screen.dart';
import 'package:flutter_demo_task/app/presentation/screens/favorite_screen/views/favorite_screen.dart';
import 'package:flutter_demo_task/app/presentation/screens/grocery_screen/view/grocery_screen.dart';
import 'package:flutter_demo_task/app/presentation/screens/home_screen/controllers/getx/home_controller.dart';
import 'package:flutter_demo_task/app/presentation/screens/notifications_screen/views/notification_screen.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../widgets/bubble_tems.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = const [
      GroceryScreen(),
      NotificationScreen(),
      FavoriteScreen(),
      CartScreen(),
    ];
    return Scaffold(
      body: GetBuilder<HomeScreenController>(
        init: HomeScreenController.instance,
        builder: (controller) {
          return Scaffold(
            bottomNavigationBar: BubbleBottomBar(
              hasNotch: false,
              opacity: 0.9,
              currentIndex: controller.currenIndex,
              onTap: controller.switchPages,
              elevation: 3.0,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(10.0),
              ),
              items: [
                //home page
                bubbleItems(
                  title: "Grocery",
                  backgroundColor: AppColors.customeColor1,
                  iamge: groceryImg,
                ),

                // search page
                bubbleItems(
                  title: "Notifications",
                  backgroundColor: AppColors.customeColor2,
                  iamge: notificationImg,
                ),
                bubbleItems(
                  title: "Favorite",
                  backgroundColor: AppColors.customeColor3,
                  iamge: favoriteImg,
                ),
                bubbleItems(
                  title: "Cart",
                  backgroundColor: AppColors.customeColor4,
                  iamge: cartImg,
                ),
              ],
            ),
            body: SafeArea(
              top: false,
              child: pages.elementAt(controller.currenIndex),
            ),
          );
        },
      ),
    );
  }
}
