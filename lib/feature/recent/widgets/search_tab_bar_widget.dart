import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:palrago_ui/feature/py1002/widgets/search/search_tab_bar_widget.dart';
import 'package:palrago_ui/feature/recent/enums/tab_category.dart';
import 'package:palrago_ui/feature/recent/widgets/search_tab_button_widget.dart';

class StoreButtons {
  StoreTabCategory category;

  StoreButtons({required this.category});
}

List<StoreButtons> categories = [
  StoreButtons(category: StoreTabCategory.foundMember),
  StoreButtons(category: StoreTabCategory.popular),
  StoreButtons(category: StoreTabCategory.recentlyKeyword),
  StoreButtons(category: StoreTabCategory.recentlyProduct),
];

//TabCategory 선택 시
typedef OnTabSelectedClicked = void Function(StoreTabCategory);

class SearchTabBarWidget extends HookWidget {
  const SearchTabBarWidget(this.onTabSelectedClicked, {super.key});
  final OnTabSelectedClicked onTabSelectedClicked;
  @override
  Widget build(BuildContext context) {
    //default : 최근 검색어
    final buttonSelected =
        useState<StoreTabCategory>(StoreTabCategory.recentlyKeyword);
        
    List<Widget> buttons = categories
        .map(
          (value) => SearchTabButtonWidget(
            category: value.category,
            onPressed: (index) {
              buttonSelected.value = value.category;
            },
            index: value.category.tabId,
            selectIndex: buttonSelected.value,
          ),
        )
        .toList();
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: buttons,
      ),
    );
  }
}
