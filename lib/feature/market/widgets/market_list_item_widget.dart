import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MarketProductVo {
  final String brand;
  final String title;
  final int discount;
  final int price;
  final int palragoPrice;
  final String imageUrl;
  final DateTime registDate;
  final DateTime exprireDate;

  const MarketProductVo(
      {required this.brand,
      required this.title,
      required this.discount,
      required this.price,
      required this.palragoPrice,
      required this.imageUrl,
      required this.registDate,
      required this.exprireDate});
}

//아이템 선택했을 경우
typedef OnMarketProductSelectClicked = VoidCallback;

class MarketListItemWidget extends HookWidget {
  const MarketListItemWidget(this.marketProduct, this.onProductSelectClicked,
      {super.key});

  final MarketProductVo marketProduct;
  final OnMarketProductSelectClicked onProductSelectClicked;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
