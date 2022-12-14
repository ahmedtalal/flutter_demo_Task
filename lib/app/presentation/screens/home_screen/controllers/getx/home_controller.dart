import 'package:get/get_state_manager/get_state_manager.dart';

class HomeScreenController extends GetxController {
  // this is singleton pattern
  static final HomeScreenController _homeScreenController =
      HomeScreenController._internal();
  HomeScreenController._internal();
  static HomeScreenController get instance => _homeScreenController;

  int currenIndex = 0;
  switchPages(int? index) {
    currenIndex = index!;
    update();
  }
}
