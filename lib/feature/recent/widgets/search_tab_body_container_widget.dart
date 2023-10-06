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
      
      case StoreTabCategory.recentlyKeyword:
        child =  SearchTabBodyRecentlyKeywordWidget(tag : category);
        break;
      case StoreTabCategory.popular:
        child = const SearchTabBodyPopularWidget();
        break;
      case StoreTabCategory.recentlyProduct:
        child = const SearchTabBodyRecentlyProductWidget();
        break;
      case StoreTabCategory.foundMember:
        child = const SearchTabBodyFoundMemberWidget();
        break;
    }
    return Container(child: child);
  }
}
