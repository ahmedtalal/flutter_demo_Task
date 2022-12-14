import 'package:flutter/material.dart';
import 'package:flutter_demo_task/app/core/constans/app_colors.dart';
import 'package:flutter_demo_task/app/core/constans/strings.dart';

class GrocerySection2Widget extends StatelessWidget {
  const GrocerySection2Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        initialValue: "",
        onChanged: (String? newvalue) {},
        validator: (String? value) {},
        keyboardType: TextInputType.name,
        style: const TextStyle(
          fontFamily: appFont_bold,
          fontSize: 18,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.customeColor6,
          border: textFieldBorder(),
          disabledBorder: textFieldBorder(),
          enabledBorder: textFieldBorder(),
          focusedBorder: textFieldBorder(),
          hintText: "Search in thousands of products",
          // label: Text(
          //   "label",
          //   style: TextStyle(
          //     color: Colors.grey[400],
          //     fontSize: 15,
          //     fontFamily: appFont,
          //   ),
          // ),
          hintStyle: TextStyle(
            fontSize: 14,
            fontFamily: appFont_regular,
            fontWeight: FontWeight.bold,
            color: Colors.grey[400],
          ),
          prefixIcon: const Icon(
            Icons.search,
            size: 22,
            color: Colors.grey,
          ),
        ),
        enabled: true,
      ),
    );
  }

  OutlineInputBorder textFieldBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(
        color: Colors.grey,
        width: 0.8,
      ),
    );
  }
}
