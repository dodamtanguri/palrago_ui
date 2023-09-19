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
import 'package:palrago_ui/ui/styles/styles.dart';

typedef OnSearchClicked = void Function(String searchKeyword);
typedef OnPushMyPageClicked = void Function();

class MarketTitleBarWidget extends HookWidget {
  const MarketTitleBarWidget(this.onSearchClicked, this.onPushMyPageClicked,
      {super.key});
  final OnSearchClicked onSearchClicked;
  final OnPushMyPageClicked onPushMyPageClicked;

  @override
  Widget build(BuildContext context) {
    final searchIcon = Image.asset(
      "assets/images/icon_area.png",
    );
    final searchTextIcon = Image.asset(
      "assets/images/ic_search_inactive",
    );
    final searchIconAction = useState<Image>(searchIcon);

    final searchControler = useTextEditingController();
    final searchUpdate = useValueListenable(searchControler);

    void onSearchButtonClick() {
      if (searchIconAction.value == searchTextIcon) {
        // searchbar 표시
        searchIconAction.value = searchIcon;
      } else {
        // searchbar 숨김
        searchIconAction.value = searchTextIcon;
      }
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Text('팔라고장터'),
        centerTitle: false,
        titleTextStyle: PlgStyles.h6Black_ff282828_20,
        actions: [
          IconButton(
            icon: searchIcon,
            color: Colors.black,
            onPressed: onSearchButtonClick,
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/images/ico_28_my_bold.png',
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
