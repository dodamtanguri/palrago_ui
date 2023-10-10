import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

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

typedef OnProductEventCallback = void Function(int tabId, int productId);

typedef OnProductRemoveClicked = OnProductEventCallback;
typedef OnProductSelectClicked = OnProductEventCallback;

class SearchListItemWidget extends HookWidget {
  const SearchListItemWidget(
      this.product, this.onProductRemoveClicked, this.onProductSelectClicked,
      {super.key});
  final OnProductRemoveClicked onProductRemoveClicked;
  final OnProductSelectClicked onProductSelectClicked;
  final ProductVo product;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        Image.asset(product.imageUrl),
      ],
    ));
  }
}
