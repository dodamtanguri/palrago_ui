/// 팔라고 장터 title search bar widget
/// input :
/// output :
/// event handler :
/// onSearchClicked : 검색 버튼 클릭
/// onPushMyPageClicked : 마이페이지 버튼 클릭
/// 작성자 : sohee
/// 특이사항 : N/A
/// @copyright 한국선불카드(주)

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

typedef OnSearchClicked = void Function(String searchKeyword);
typedef OnPushMyPageClicked = void Function();

class MarketTitleBarWidget extends HookWidget {
  const MarketTitleBarWidget(
      this.onSearchClicked, this.onPushMyPageClicked, this.searchKeyword,
      {super.key});
  final OnSearchClicked onSearchClicked;
  final OnPushMyPageClicked onPushMyPageClicked;
  final String searchKeyword;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
