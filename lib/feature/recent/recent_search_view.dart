import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:palrago_ui/feature/recent/enums/tab_category.dart';

import 'package:palrago_ui/feature/recent/widgets/search_tab_bar_widget.dart';
import 'package:palrago_ui/feature/recent/widgets/search_tab_body_container_widget.dart';

import 'package:palrago_ui/feature/store/widgets/store_app_bar_widget.dart';
import 'package:palrago_ui/ui/styles/colors.dart';
import 'package:palrago_ui/ui/styles/margins.dart';
import 'package:palrago_ui/ui/styles/sizes.dart';

import 'widgets/search_bar_widget.dart';

class RecentSearchView extends HookWidget {
  const RecentSearchView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final selectedTab =
        useState<StoreTabCategory>(StoreTabCategory.foundMember);
    return Scaffold(
      //Store app bar 사용
      appBar: const StoreAppBarWidget(title: '검색'),
      body: Container(
        color: PlgColor.temp,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: PlgSizes.m20),
                color: Colors.white,
                child: Column(
                  children: [
                    SearchBarWidget(() {}),
                    PlgMargins.v10,
                    SearchTabBarWidget((tab) => selectedTab.value = tab),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: PlgSizes.m20),
                  child:
                      SearchTabBodyContainerWidget(category: selectedTab.value),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
