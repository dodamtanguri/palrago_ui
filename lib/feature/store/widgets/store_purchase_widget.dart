/// 스토어 상세 페이지 app bar
///
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:palrago_ui/feature/store/store_detail_view.dart';
import 'package:palrago_ui/feature/store/store_purchase_option_view.dart';
import 'package:palrago_ui/ui/styles/colors.dart';
import 'package:palrago_ui/ui/styles/margins.dart';
import 'package:palrago_ui/ui/styles/sizes.dart';
import 'package:palrago_ui/ui/styles/styles.dart';

class StorePurchaseDetailWidget extends HookWidget {
  const StorePurchaseDetailWidget(this.product, {super.key});
  final StoreProductVo product;

  @override
  Widget build(BuildContext context) {
    void onPurchaseClicked() {
      showModalBottomSheet(
          context: context,
          //모달 뒤쪽 컬러 말하는거임
          isScrollControlled: true,
          //barrierColor: Colors.red,
          backgroundColor: Colors.transparent,
          builder: (context) => StorePurchaseOptionView(product));
    }

    return Padding(
      padding: const EdgeInsets.only(
        top: PlgSizes.m24,
        bottom: PlgSizes.m20,
        left: PlgSizes.m20,
        right: PlgSizes.m20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FilledButton(
            onPressed: () {},
            style: FilledButton.styleFrom(
              backgroundColor: PlgColor.primary_261b9dd9,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14.0),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: PlgSizes.m18, vertical: PlgSizes.m18),
              child: Text(
                '선물하기',
                style: PlgStyles.body1Primary_ff1b9dd9_16,
              ),
            ),
          ),
          PlgMargins.h8,
          FilledButton(
            onPressed: onPurchaseClicked,
            style: FilledButton.styleFrom(
              backgroundColor: PlgColor.primary_ff1b9dd9,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14.0),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(
                vertical: PlgSizes.m18,
                horizontal: PlgSizes.m80,
              ),
              child: Text(
                '구매하기',
                style: PlgStyles.subtitle1White_ffffffff_16,
              ),
            ),
          )
        ],
      ),
    );
  }
}
