import 'package:flutter/material.dart';
import 'package:palrago_ui/feature/recent/enums/tab_category.dart';
import 'package:palrago_ui/feature/recent/widgets/search_tab_button_widget.dart';

class TabButtonTestView extends StatelessWidget {
  const TabButtonTestView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SearchTabButtonWidget(
          category: StoreTabCategory.recentlyKeyword,
          onPressed: (index) {},
          index: 100,
          selectIndex: StoreTabCategory.recentlyKeyword,
        ),
      ),
    );
  }
}
