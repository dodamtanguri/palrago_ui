import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:palrago_ui/feature/recent/enums/tab_category.dart';
import 'package:palrago_ui/feature/recent/widgets/tabBody/search_body_found_membet_widget.dart';
import 'package:palrago_ui/feature/recent/widgets/tabBody/search_body_popular_widget.dart';
import 'package:palrago_ui/feature/recent/widgets/tabBody/search_body_recentlyKeword_widget.dart';
import 'package:palrago_ui/feature/recent/widgets/tabBody/search_body_recently_product_widget.dart';

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
          products: const [],
          tag: category,
        );
      //찾은 회원
      case StoreTabCategory.foundMember:
        child = const SearchTabBodyFoundMemberWidget();
    }
    return SizedBox(child: child);
  }
}
