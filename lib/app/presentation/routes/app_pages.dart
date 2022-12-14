import 'package:flutter_demo_task/app/presentation/routes/app_routes.dart';
import 'package:flutter_demo_task/app/presentation/screens/cart_Screen/views/cart_screen.dart';
import 'package:flutter_demo_task/app/presentation/screens/home_screen/views/home_screen.dart';
import 'package:get/route_manager.dart';

class AppPages {
  static List<GetPage> pages = [
    GetPage(
      name: AppRoutes.homeScreenRoute,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: AppRoutes.cartScreenRoute,
      page: () => const CartScreen(),
    ),
  ];
}
