import 'package:get/get_state_manager/get_state_manager.dart';

class GroceryScreenController extends GetxController {
  static final GroceryScreenController _groceryScreenController =
      GroceryScreenController._internal();
  GroceryScreenController._internal();
  static GroceryScreenController get instance => _groceryScreenController;
}
