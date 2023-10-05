import 'package:flutter/material.dart';
import 'package:palrago_ui/feature/recent/widgets/search_tab_button_widget.dart';

class TabButtonTestView extends StatelessWidget {
  const TabButtonTestView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:  Center(
        child: SearchTabButtonWidget(
                      category: TabCategory.recentlyKeyword,
                      onPressed: () {},
                      index: 1,
                      selectedIndex: TabCategory.recentlyKeyword,
                    ),
      ),
    );
  }
}