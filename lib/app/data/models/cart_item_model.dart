import 'package:flutter/material.dart';

class CartItemModel {
  final String title1, title2, title3;
  final Color containerColor;
  final int count;
  const CartItemModel({
    required this.containerColor,
    required this.title1,
    required this.title2,
    required this.title3,
    required this.count,
  });
}
