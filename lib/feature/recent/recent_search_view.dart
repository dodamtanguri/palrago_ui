import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:palrago_ui/feature/recent/widgets/search_bar_widget_flexible.dart';
import 'package:palrago_ui/feature/recent/widgets/search_tab_bar_widget.dart';

import 'package:palrago_ui/feature/store/widgets/store_app_bar_widget.dart';
import 'package:palrago_ui/ui/styles/margins.dart';
import 'package:palrago_ui/ui/styles/sizes.dart';

import 'widgets/search_bar_widget.dart';

class RecentSearchView extends HookWidget {
  const RecentSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Store app bar 사용
      appBar: const StoreAppBarWidget(title: '검색'),
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: PlgSizes.m20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SearchBarWidget(() {}),
              PlgMargins.v10,
              SearchTabBarWidget((p0) {}),
            ],
          ),
        ),
      ),
    );
  }
}
