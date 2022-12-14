import 'package:flutter/material.dart';
import 'package:flutter_demo_task/app/presentation/screens/grocery_screen/widgets/grocery_Section6_widget.dart';
import 'package:flutter_demo_task/app/presentation/screens/grocery_screen/widgets/grocery_section2_widget.dart';
import 'package:flutter_demo_task/app/presentation/screens/grocery_screen/widgets/grocery_section3_widget.dart';
import 'package:flutter_demo_task/app/presentation/screens/grocery_screen/widgets/grocery_section4_widget.dart';
import 'package:flutter_demo_task/app/presentation/screens/grocery_screen/widgets/grocery_section5_widget.dart';
import 'package:flutter_demo_task/app/presentation/shared_widgets/header_shared_widget.dart';

class GroceryScreen extends StatelessWidget {
  const GroceryScreen({super.key});

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
          children: const [
            SizedBox(height: 100),
            HeaderSharedWidget(title: "Mustafa St."),
            SizedBox(height: 30),
            GrocerySection2Widget(),
            SizedBox(height: 30),
            GrocerySection3Widget(),
            SizedBox(height: 30),
            GrocerySection4Widget(),
            SizedBox(height: 20),
            GrocerySection5Widget(),
            SizedBox(height: 20),
            GrocerySection6Widget()
          ],
        ),
      ),
    ));
  }
}
