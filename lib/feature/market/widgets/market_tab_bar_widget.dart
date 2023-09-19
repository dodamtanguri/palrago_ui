import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:palrago_ui/feature/market/widgets/market_tab_button_widget.dart';
import 'package:palrago_ui/ui/styles/colors.dart';
import 'package:palrago_ui/ui/styles/margins.dart';
import 'package:palrago_ui/ui/styles/sizes.dart';
import 'package:palrago_ui/ui/styles/styles.dart';

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
  const MarketTabBarWidget(this.onTabSelectClicked, {super.key});
  final OnTabSelectClicked onTabSelectClicked;

  @override
  Widget build(BuildContext context) {
    final controller = useTabController(initialLength: 3);
    final index = useState(0);
    controller.addListener(() {
      index.value = controller.index;
    });
    return Container(
      child: TabBar(
        controller: controller,
        labelColor: PlgColor.primary_ff1b9dd9,
        indicatorColor: PlgColor.primary_ff1b9dd9,
        isScrollable: true,
        unselectedLabelColor: PlgColor.grey_cool_ff989a9e,
        unselectedLabelStyle: PlgStyles.subtitle2Grey_ff999999_14,
        onTap: (index) {},
        tabs: const [
          MarketTabButtonWidget(
            PlgMarketProductCategory.all,
            'assets/images/icon_category_all.png',
          ),
          MarketTabButtonWidget(
            PlgMarketProductCategory.giftVoucher,
            'assets/images/icon_category_voucher.png',
          ),
          MarketTabButtonWidget(
            PlgMarketProductCategory.conveniencesMart,
            'assets/images/icon_category_mart.png',
          ),
        ],
      ),
    );
  }
}
