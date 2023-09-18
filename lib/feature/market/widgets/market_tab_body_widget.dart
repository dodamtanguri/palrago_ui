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
  const MarketTabBodyWidget(this.marketCategory, {super.key});
  final MarketCategory marketCategory;
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
