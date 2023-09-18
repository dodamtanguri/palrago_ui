import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

enum MarketCategory {
  all(000, '전체보기'),
  gifticard(100, '상품권'),
  store(200, '편의점/마트');

  const MarketCategory(this.categoryId, this.categoryTitle);
  final int categoryId;
  final String categoryTitle;
}

// Tab Catrgory 선택
typedef OnTabSelectClicked = void Function(MarketCategory);

class MarketTabBarWidget extends HookWidget {
  const MarketTabBarWidget(this.onTabSelectClicked, {super.key});
  final OnTabSelectClicked onTabSelectClicked;
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
