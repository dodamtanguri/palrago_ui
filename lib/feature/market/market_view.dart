import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:palrago_ui/feature/market/widgets/market_list_item_widget.dart';
import 'package:palrago_ui/feature/market/widgets/market_tab_bar_widget.dart';
import 'package:palrago_ui/feature/market/widgets/market_tab_body_widget.dart';
import 'package:palrago_ui/feature/market/widgets/market_title_bar_widget.dart';
import 'package:palrago_ui/feature/py1002/widgets/search/search_list_item_widget.dart';
import 'package:palrago_ui/ui/styles/margins.dart';
import 'package:palrago_ui/ui/styles/sizes.dart';

typedef ProductList = List<ProductVo>;

class MarketView extends HookWidget {
  const MarketView({
    super.key,
    required this.categories,
    required this.marketProductList,
  });
  final List<PlgMarketProductCategory> categories;
  final List<MarketProductVo> marketProductList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: PlgSizes.wh20),
        child: Column(
          children: [
            // SizedBox(
            //   width: MediaQuery.of(context).size.width,
            //   height: PlgSizes.wh48,
            //   child: MarketTitleBarWidget((searchKeyword) { }, () { })
            // ),
            PlgMargins.h10,
            Expanded(
              child: MarketTabBarWidget((p0) { }, (index) { }),
            ),
            PlgMargins.h10,
            const Expanded(child: MarketTabBodyWidget(PlgMarketProductCategory.all)),
          ],
        ),
      ),
    );
  }
}
