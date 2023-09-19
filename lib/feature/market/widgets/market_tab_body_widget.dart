/// 팔라고 장터 tab bar
/// input : marketCategoryId
/// output :
/// 작성자 : sohee
/// 특이사항 : N/A
/// @copyright 한국선불카드(주)

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:palrago_ui/feature/market/widgets/market_tab_bar_widget.dart';

class MarketTabBodyWidget extends HookWidget {
  const MarketTabBodyWidget(this.plgMarketProductCategory, {super.key});
  final PlgMarketProductCategory plgMarketProductCategory;
  @override
  Widget build(BuildContext context) {
    final controller = useTabController(initialLength: 3);
    final index = useState(0);
    controller.addListener(() {
      index.value = controller.index;
    });
    return Container(
        child: TabBarView(
      controller: controller,
      children: const [
        Center(
          child: Text("It's cloudy here"),
        ),
        Center(
          child: Text("It's rainy here"),
        ),
        Center(
          child: Text("It's sunny here"),
        ),
      ],
    ));
  }
}
