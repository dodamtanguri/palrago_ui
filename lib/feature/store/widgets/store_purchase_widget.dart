/// 스토어 상세 페이지 app bar
///
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:palrago_ui/feature/store/store_detail_view.dart';
import 'package:palrago_ui/feature/store/store_purchase_option_view.dart';
import 'package:palrago_ui/feature/store/widgets/store_button_widget.dart';
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
          isScrollControlled: true,
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
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StoreButtonWidget(
            backgroundColor: PlgColor.primary_261b9dd9,
            onButtonClicked: () {},
            horizontalMargin: PlgSizes.m18,
            buttonTitle: '선물하기',
            textStyle: PlgStyles.subtitle1Primary_ff1b9dd9_16,
          ),
          PlgMargins.h8,
          Expanded(
            child: StoreButtonWidget(
              textStyle: PlgStyles.subtitle1White_ffffffff_16,
              backgroundColor: PlgColor.primary_ff1b9dd9,
              onButtonClicked: onPurchaseClicked,
              buttonTitle: '구매하기',
              horizontalMargin: PlgSizes.m80,
            ),
          ),
        ],
      ),
    );
  }
}
