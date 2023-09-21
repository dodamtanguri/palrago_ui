import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:palrago_ui/feature/market/widgets/market_list_item_widget.dart';

class MarketListWidget extends HookWidget {
  const MarketListWidget(this.marketProducts, this.onProductSelectClicked,
      {super.key});

  final List<MarketProductVo> marketProducts;
  final OnMarketProductSelectClicked onProductSelectClicked;

  @override
  Widget build(BuildContext context) {
    List<Widget> itemList = marketProducts
        .map(
          (value) => MarketListItemWidget(value, () {}),
        )
        .toList();

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: itemList,
      ),
    );
  }
}
