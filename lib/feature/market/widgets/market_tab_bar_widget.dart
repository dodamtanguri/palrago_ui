import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:palrago_ui/feature/market/widgets/market_tab_button_widget.dart';

import 'package:palrago_ui/ui/styles/margins.dart';

class MarketTabBarButton {
  final String imageUrl;
  final PlgMarketProductCategory category;

  MarketTabBarButton({required this.imageUrl, required this.category});
}

List<MarketTabBarButton> categories = [
  MarketTabBarButton(
      imageUrl: 'assets/images/icon_category_all.png',
      category: PlgMarketProductCategory.all),
  MarketTabBarButton(
      imageUrl: 'assets/images/icon_category_voucher.png',
      category: PlgMarketProductCategory.giftVoucher),
  MarketTabBarButton(
      imageUrl: 'assets/images/icon_category_mart.png',
      category: PlgMarketProductCategory.conveniencesMart),
  MarketTabBarButton(
      imageUrl: 'assets/images/icon_category_mart.png',
      category: PlgMarketProductCategory.conveniencesMart),
  MarketTabBarButton(
      imageUrl: 'assets/images/icon_category_mart.png',
      category: PlgMarketProductCategory.conveniencesMart),
];

enum PlgMarketProductCategory {
  all(0, '전체보기'),
  // favoriteSeller(1, '즐겨찾는 판매자'),
  giftVoucher(2, '상품권류'),
  // beauty(3, '뷰티'),
  // chickenBuggerPizza(4, '치킨/버거/피자/외식'),
  // beverageIceCream(5, '커피/음료/아이스크림'),
  // etcCoupon(6, '1+1/할인쿠폰/실물,기타'),
  // bakery(7, '베이커리/도넛/떡'),
  conveniencesMart(8, '편의점/마트'),
  // ticket(9, '대리예매/영화'),
   undefined(0xffff, '');

  const PlgMarketProductCategory(this.categoryId, this.categoryTitle);
  final int categoryId;
  final String categoryTitle;
}

// Tab Catrgory 선택
typedef OnTabSelectClicked = void Function(PlgMarketProductCategory);

class MarketTabBarWidget extends HookWidget {
  const MarketTabBarWidget(this.onTabSelectClicked, {super.key});
  final OnTabSelectClicked onTabSelectClicked;

  @override
  Widget build(BuildContext context) {
    final selectedIndexButton = useState<PlgMarketProductCategory>(PlgMarketProductCategory.undefined);

    List<Widget> buttons = categories
        .map((value) => MarketTabButtonWidget(
              category: value.category,
              categoryImage: value.imageUrl,
              onPressed: (index) {
                selectedIndexButton.value = value.category;
              },
              index: value.category.categoryId,
              selectedIndex: selectedIndexButton.value,
            ))
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
