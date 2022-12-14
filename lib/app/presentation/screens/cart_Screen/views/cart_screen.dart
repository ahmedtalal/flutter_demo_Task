import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_demo_task/app/config/screen_handler.dart';
import 'package:flutter_demo_task/app/presentation/screens/cart_Screen/widgets/cart_section2_widget.dart';
import 'package:flutter_demo_task/app/presentation/shared_widgets/header_shared_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: ScreenHandler.getScreenHeight(context) / 10),
              const HeaderSharedWidget(title: "Oxford Street"),
              const SizedBox(height: 60),
              const CartSection2Widget(),
            ],
          ),
        ),
      ),
    );
  }
}
