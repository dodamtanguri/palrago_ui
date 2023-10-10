import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:palrago_ui/feature/recent/enums/tab_category.dart';
import 'package:palrago_ui/feature/recent/widgets/tabBody/search_body_found_membet_widget.dart';
import 'package:palrago_ui/feature/recent/widgets/tabBody/search_body_popular_widget.dart';
import 'package:palrago_ui/feature/recent/widgets/tabBody/search_body_recentlyKeword_widget.dart';
import 'package:palrago_ui/feature/recent/widgets/tabBody/search_body_recently_product_widget.dart';

import '../models/product_item.dart';

final List<ProductVo> dummyProducts = [
  const ProductVo(
    imageUrl: 'assets/images/img.png',
    brand: 'Brand1',
    title: '스타벅스 아이스 카페 아메리카노 Tall 1+1 (강남역점 테이크아웃 전용)',
    price: 1000,
    discount: 10,
  ),
  const ProductVo(
    imageUrl: 'assets/images/img.png',
    brand: 'Brand2',
    title: 'Product 2',
    price: 2000,
    discount: 15,
  ),
  const ProductVo(
    imageUrl: 'assets/images/img.png',
    brand: 'Brand3',
    title: 'Product 3',
    price: 1500,
    discount: 20,
  ),
  const ProductVo(
    imageUrl: 'assets/images/img.png',
    brand: 'Brand4',
    title: 'Product 4',
    price: 2500,
    discount: 25,
  ),
  const ProductVo(
    imageUrl: 'assets/images/img.png',
    brand: 'Brand5',
    title: 'Product 5',
    price: 3000,
    discount: 30,
  ),
];

class SearchTabBodyContainerWidget extends HookWidget {
  const SearchTabBodyContainerWidget({super.key, required this.category});
  final StoreTabCategory category;

  @override
  Widget build(BuildContext context) {
    Widget child;
    switch (category) {
      //최근검색어
      case StoreTabCategory.recentlyKeyword:
        child = SearchTabBodyRecentlyKeywordWidget(tag: category);
      //인기검색어
      case StoreTabCategory.popular:
        child = const SearchTabBodyPopularWidget();
      //최근 본 상품
      case StoreTabCategory.recentlyProduct:
        child = SearchTabBodyRecentlyProductWidget(
          products: dummyProducts,
          tag: category,
        );
      //찾은 회원
      case StoreTabCategory.foundMember:
        child = const SearchTabBodyFoundMemberWidget();
    }
    return SizedBox(child: child);
  }
}
