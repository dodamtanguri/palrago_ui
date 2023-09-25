/// 스토어 상세 페이지
///
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:palrago_ui/feature/store/widgets/store_app_bar_widget.dart';
import 'package:palrago_ui/feature/store/widgets/store_product_detail_widget.dart';
import 'package:palrago_ui/feature/store/widgets/store_purchase_widget.dart';
import 'package:palrago_ui/feature/store/widgets/store_refund_notice_widget.dart';
import 'package:palrago_ui/ui/styles/colors.dart';

// List에서 받은 Product 객체
@immutable
class StoreProductVo {
  final String brand;
  final String title;
  final int discount;
  final int price;
  final int palragoPrice;
  final List<String> imageUrl;
  final DateTime registDate;
  final DateTime exprireDate;
  final bool isSoldOut;
  final String description;

  const StoreProductVo({
    required this.brand,
    required this.title,
    required this.discount,
    required this.price,
    required this.palragoPrice,
    required this.imageUrl,
    required this.registDate,
    required this.exprireDate,
    required this.isSoldOut,
    required this.description,
  });
}

StoreProductVo temp = StoreProductVo(
    brand: 'Sample Brand1',
    title: '스타벅스 아이스 카페 아메리카노 Tall 1+1 (강남역점 테이크아웃 전용)',
    discount: 10,
    price: 9800,
    palragoPrice: 13200,
    imageUrl: const ['assets/images/img.png', 'assets/images/img.png'],
    registDate: DateTime.now(),
    exprireDate: DateTime.now().add(const Duration(days: 30)),
    isSoldOut: false,
    description: """상품설명
- ﻿﻿카페 아메리카노 Tall 2잔+부드러운 생크림 카스텔라
* ﻿﻿유의사항
- ﻿﻿상기 이미지는 연출된 것으로 실제와 다를 수 있습니다.
- ﻿﻿본 상품은 매장 재고 상황에 따라 동일 상품으로 교환이 불가능할 수 있습 니다.
- ﻿﻿동일 상품 교환이 불가한 경우 동일 가격 이상의 다른 상품으로 교환이 가 능하며, 동일 상품 외 다른 상품으로 교환할 시 차액이 발생할 수 있습니다.( 차액 추가 지불)
- ﻿﻿스타벅스 앱의 사이렌 오더를 통해서도 주문 및 결제가 가능합니다.(MD제 외)
- ﻿﻿미군부내 매장, 워터파크 입점 매장, 인천공항 입점 매장, 마장휴게소점 등 일부 매장에서는 사용이 불가합니다.
- ﻿﻿해당 쿠폰과 스타벅스 카드의 복합결제 거래는 스타벅스 카드의 고유 혜택 인 Free Extra 및 별 적립은 적용 대상이 아닌 점 이용에 참고하시기 바랍니
다
- 정식 판매처 외의 장소나 경로를 통하여 구매하거나, 기타의 방법으로 보유 하신 쿠폰은 정상적인 사용 (환불, 재전송 등 포함)이 금지되거나 제한될 수 있으니 주의하시기 바랍니다.""");

class StoreDetailView extends HookWidget {
  const StoreDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const StoreAppBarWidget(),
      body: SafeArea(
        child: ListView(
          children: [
            StoreProductDetailWidget(temp),
            const StoreRefundNoticeWidget(),
            const Divider(
              thickness: 1,
              color: PlgColor.black15_26282828,
            ),
            const StorePurchaseDetailWidget(),
          ],
        ),
      ),
    );
  }
}
