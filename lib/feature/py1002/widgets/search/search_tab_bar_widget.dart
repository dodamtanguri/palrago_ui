import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

enum TabCategory {
  recentlyKeyword(100, '최근검색어'),
  popular(200, '인기 검색어'),
  recentlyProduct(300, '최근 본 상품'),
  foundMember(400, '찾은 회원');

  const TabCategory(this.tabId, this.title);

  final int tabId;
  final String title;
}

typedef OnTabSelectedClicked = void Function(TabCategory);

class SearchTabBarWidget extends HookWidget {
  const SearchTabBarWidget(this.onTabSelectedClicked,  {super.key});
  final OnTabSelectedClicked onTabSelectedClicked;
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
