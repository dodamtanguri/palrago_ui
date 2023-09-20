import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:palrago_ui/feature/market/widgets/market_tab_button_widget.dart';

import 'package:palrago_ui/ui/styles/margins.dart';

enum PlgMarketProductCategory {
  all(0, '전체보기'),
  // favoriteSeller(1, '즐겨찾는 판매자'),
  giftVoucher(2, '상품권류'),
  // beauty(3, '뷰티'),
  // chickenBuggerPizza(4, '치킨/버거/피자/외식'),
  // beverageIceCream(5, '커피/음료/아이스크림'),
  // etcCoupon(6, '1+1/할인쿠폰/실물,기타'),
  // bakery(7, '베이커리/도넛/떡'),
  conveniencesMart(8, '편의점/마트');
  // ticket(9, '대리예매/영화'),
  // undefined(0xffff, '');

  const PlgMarketProductCategory(this.categoryId, this.categoryTitle);
  final int categoryId;
  final String categoryTitle;
}

// Tab Catrgory 선택
typedef OnTabSelectClicked = void Function(PlgMarketProductCategory);

class MarketTabBarWidget extends HookWidget {
  const MarketTabBarWidget(this.onTabSelectClicked, this.onButtonSelected,
      {super.key});
  final OnTabSelectClicked onTabSelectClicked;
  final void Function(int index) onButtonSelected;
  @override
  Widget build(BuildContext context) {
    final selectedIndexButton = useState<int>(0);
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MarketTabButtonWidget(
              categoryImage: 'assets/images/icon_category_all.png',
              onPressed: (index) => {selectedIndexButton.value = index},
              index: 0,
              selectedIndex: selectedIndexButton.value,
              category: PlgMarketProductCategory.all,
            ),
            PlgMargins.h10,
            MarketTabButtonWidget(
              categoryImage: 'assets/images/icon_category_voucher.png',
              category: PlgMarketProductCategory.giftVoucher,
              onPressed: (index) => {selectedIndexButton.value = index},
              index: 1,
              selectedIndex: selectedIndexButton.value,
            ),
            PlgMargins.h10,
            MarketTabButtonWidget(
              categoryImage: 'assets/images/icon_category_mart.png',
              category: PlgMarketProductCategory.conveniencesMart,
              onPressed: (index) => {selectedIndexButton.value = index},
              index: 2,
              selectedIndex: selectedIndexButton.value,
            ),
            PlgMargins.h10,
            MarketTabButtonWidget(
              categoryImage: 'assets/images/icon_category_mart.png',
              category: PlgMarketProductCategory.conveniencesMart,
              onPressed: (index) => {selectedIndexButton.value = index},
              index: 3,
              selectedIndex: selectedIndexButton.value,
            ),
            MarketTabButtonWidget(
              categoryImage: 'assets/images/icon_category_mart.png',
              category: PlgMarketProductCategory.conveniencesMart,
              onPressed: (index) => {selectedIndexButton.value = index},
              index: 4,
              selectedIndex: selectedIndexButton.value,
            ),
            PlgMargins.h10,
            MarketTabButtonWidget(
              categoryImage: 'assets/images/icon_category_mart.png',
              category: PlgMarketProductCategory.conveniencesMart,
              onPressed: (index) => {selectedIndexButton.value = index},
              index: 5,
              selectedIndex: selectedIndexButton.value,
            ),
            PlgMargins.h10,
          ],
        ),
      ),
    );
  }
}
