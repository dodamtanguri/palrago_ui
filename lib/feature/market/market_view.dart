import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:palrago_ui/feature/market/widgets/market_list_item_widget.dart';
import 'package:palrago_ui/feature/market/widgets/market_list_widget.dart';
import 'package:palrago_ui/feature/market/widgets/market_sort_widget.dart';
import 'package:palrago_ui/feature/market/widgets/market_tab_bar_widget.dart';
import 'package:palrago_ui/feature/market/widgets/temp_app_bar_widget.dart';
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
    List<MarketProductVo> items = [
    MarketProductVo(
        brand: 'Sample Brand1',
        title: '스타벅스 아이스 카페 아메리카노 Tall 1+1 (강남역점 테이크아웃 전용)',
        discount: 10,
        price: 1000,
        palragoPrice: 900,
        imageUrl: 'assets/images/img.png',
        registDate: DateTime.now(),
        exprireDate: DateTime.now().add(const Duration(days: 30)),
        isSoldOut: false,
        
        ),
    MarketProductVo(
        brand: 'Sample Brand2',
        title: '스타벅스 아이스 카페 아메리카노 Tall 1+1 (강남역점 테이크아웃 전용)',
        discount: 10,
        price: 1000,
        palragoPrice: 900,
        imageUrl: 'assets/images/img.png',
        registDate: DateTime.now(),
        exprireDate: DateTime.now().add(const Duration(days: 30)),
        isSoldOut: false,),
    MarketProductVo(
        brand: 'Sample Brand3',
        title: '스타벅스 아이스 카페 아메리카노 Tall 1+1 (강남역점 테이크아웃 전용)',
        discount: 10,
        price: 1000,
        palragoPrice: 900,
        imageUrl: 'assets/images/img.png',
        registDate: DateTime.now(),
        exprireDate: DateTime.now().add(const Duration(days: 30)),
        isSoldOut: false,),
        MarketProductVo(
        brand: 'Sample Brand3',
        title: '스타벅스 아이스 카페 아메리카노 Tall 1+1 (강남역점 테이크아웃 전용)',
        discount: 10,
        price: 1000,
        palragoPrice: 900,
        imageUrl: 'assets/images/img.png',
        registDate: DateTime.now(),
        exprireDate: DateTime.now().add(const Duration(days: 30)),
        isSoldOut: true,),
        MarketProductVo(
        brand: 'Sample Brand3',
        title: '스타벅스 아이스 카페 아메리카노 Tall 1+1 (강남역점 테이크아웃 전용)',
        discount: 10,
        price: 1000,
        palragoPrice: 900,
        imageUrl: 'assets/images/img.png',
        registDate: DateTime.now(),
        exprireDate: DateTime.now().add(const Duration(days: 30)),
        isSoldOut: true,),
        MarketProductVo(
        brand: 'Sample Brand3',
        title: '스타벅스 아이스 카페 아메리카노 Tall 1+1 (강남역점 테이크아웃 전용)',
        discount: 10,
        price: 1000,
        palragoPrice: 900,
        imageUrl: 'assets/images/img.png',
        registDate: DateTime.now(),
        exprireDate: DateTime.now().add(const Duration(days: 30)),
        isSoldOut: true,),
        MarketProductVo(
        brand: 'Sample Brand3',
        title: '스타벅스 아이스 카페 아메리카노 Tall 1+1 (강남역점 테이크아웃 전용)',
        discount: 10,
        price: 1000,
        palragoPrice: 900,
        imageUrl: 'assets/images/img.png',
        registDate: DateTime.now(),
        exprireDate: DateTime.now().add(const Duration(days: 30)),
        isSoldOut: true,),
  ];
    return Scaffold(
      appBar: const TestTitleBarWidet(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: PlgSizes.wh20),
        child: Column(
          children: [
            SizedBox(height: PlgSizes.wh36, child: MarketTabBarWidget((p0) {})),
            PlgMargins.h10,
            const SizedBox(
              height: 57,
              child: MarketSortWidget(),
            ),
            // SizedBox(
            //   height: 112,
            //   child: MarketListItemWidget(marketProduct, () {}),
            // )
            Expanded(child: MarketListWidget(items, () {}))
          ],
        ),
      ),
    );
  }
}
