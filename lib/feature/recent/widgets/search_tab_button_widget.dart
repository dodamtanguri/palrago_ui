import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:palrago_ui/feature/market/widgets/market_tab_bar_widget.dart';
import 'package:palrago_ui/ui/styles/colors.dart';
import 'package:palrago_ui/ui/styles/margins.dart';
import 'package:palrago_ui/ui/styles/sizes.dart';

enum TabCategory {
  recentlyKeyword(100, '최근검색어'),
  popular(200, '인기 검색어'),
  recentlyProduct(300, '최근 본 상품'),
  foundMember(400, '찾은 회원');

  const TabCategory(this.tabId, this.title);

  final int tabId;
  final String title;
}

class RecentTabBarButton {
  final TabCategory category;
  RecentTabBarButton({required this.category});
}

List<RecentTabBarButton> categories = [];

class SearchTabButtonWidget extends HookWidget {
  const SearchTabButtonWidget({
    required this.category,
    required this.onPressed,
    required this.index,
    required this.selectedIndex,
    super.key,
  });
  final TabCategory category;
  final Function onPressed;
  final int index;
  final TabCategory selectedIndex;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.white, // Button color
        foregroundColor: Colors.lime,

        splashFactory: NoSplash.splashFactory,
        side: const BorderSide(width: 3, color: Colors.black),
        shape: LinearBorder.bottom(),
      ),
      onPressed: () => print('출력이되나'),
      child: const Text('Outlined'),
    );
  }
}
