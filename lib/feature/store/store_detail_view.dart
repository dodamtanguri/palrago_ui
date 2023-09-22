/// 스토어 상세 페이지
///
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:palrago_ui/feature/store/widgets/store_app_bar_widget.dart';
import 'package:palrago_ui/feature/store/widgets/store_product_detail_widget.dart';
import 'package:palrago_ui/feature/store/widgets/store_purchase_widget.dart';
import 'package:palrago_ui/feature/store/widgets/store_refund_notice_widget.dart';
import 'package:palrago_ui/ui/styles/colors.dart';

class StoreDetailView extends HookWidget {
  const StoreDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const StoreAppBarWidget(),
      body: SafeArea(
        child: ListView(
          children: const [
            StoreProductDetailWidget(),
            Divider(
              thickness: 1,
              color: PlgColor.black15_26282828,
            ),
            StoreRefundNoticeWidget(),
            Divider(
              thickness: 1,
              color: PlgColor.black15_26282828,
            ),
            StorePurchaseDetailWidget(),
          ],
        ),
      ),
    );
  }
}
