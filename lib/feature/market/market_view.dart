import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:palrago_ui/feature/market/widgets/market_list_item_widget.dart';
import 'package:palrago_ui/feature/market/widgets/market_tab_bar_widget.dart';
import 'package:palrago_ui/feature/py1002/widgets/search/search_list_item_widget.dart';

typedef ProductList = List<ProductVo>;

class MarketView extends HookWidget {
  const MarketView({
    super.key,
    required this.categories,
    required this.marketProductList,
  });
  final List<MarketCategory> categories;
  final List<MarketProductVo> marketProductList;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
