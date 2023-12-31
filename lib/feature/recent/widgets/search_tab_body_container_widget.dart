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
      id: 1),
  const ProductVo(
      imageUrl: 'assets/images/img.png',
      brand: 'Brand2',
      title: 'Product 2',
      price: 2000,
      discount: 15,
      id: 2),
  const ProductVo(
      imageUrl: 'assets/images/img.png',
      brand: 'Brand3',
      title: 'Product 3',
      price: 1500,
      discount: 20,
      id: 3),
  const ProductVo(
    imageUrl: 'assets/images/img.png',
    brand: 'Brand4',
    title: 'Product 4',
    price: 2500,
    discount: 25,
    id: 4,
  ),
  const ProductVo(
      imageUrl: 'assets/images/img.png',
      brand: 'Brand5',
      title: 'Product 5',
      price: 3000,
      discount: 30,
      id: 5),
];

class SearchTabBodyContainerWidget extends HookWidget {
  const SearchTabBodyContainerWidget({super.key, required this.category});
  final StoreTabCategory category;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: switch (category) {
      //최근검색어
      StoreTabCategory.recentlyKeyword =>
        SearchTabBodyRecentlyKeywordWidget(tag: category),
      //인기검색어
      StoreTabCategory.popular => const SearchTabBodyPopularWidget(),
      //최근 본 상품
      StoreTabCategory.recentlyProduct => SearchTabBodyRecentlyProductWidget(
          products: dummyProducts,
          tag: category,
        ),
      //찾은 회원
      StoreTabCategory.foundMember => const SearchTabBodyFoundMemberWidget(),
      _ => const SearchTabBodyFoundMemberWidget(),
    });
  }
}
