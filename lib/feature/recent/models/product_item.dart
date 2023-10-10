import 'package:flutter/material.dart';

@immutable
class ProductVo {
  final String imageUrl;
  final String brand;
  final String title;
  final int price;
  final int discount;

  const ProductVo(
      {required this.imageUrl,
      required this.brand,
      required this.title,
      required this.price,
      required this.discount});
}
