import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:palrago_ui/feature/store/store_detail_view.dart';
import 'package:palrago_ui/feature/store/widgets/option_item_widget.dart';
import 'package:palrago_ui/feature/store/widgets/option_order_count_widget.dart';
import 'package:palrago_ui/feature/store/widgets/store_app_bar_widget.dart';
import 'package:palrago_ui/ui/styles/colors.dart';
import 'package:palrago_ui/ui/styles/sizes.dart';

class StorePurchaseOptionView extends HookWidget {
  const StorePurchaseOptionView(this.product, {super.key});
  final StoreProductVo product;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.5,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(PlgSizes.wh20),
      ),
      child: Scaffold(
          appBar: const StoreAppBarWidget(
            title: '구매 옵션',
          ),
          backgroundColor: PlgColor.white_ffffffff,
          body: Column(
            children: [
              OptionItemWidget(
                product: product,
              ),
              OptionOrderCountWidget(price: product.palragoPrice),
            ],
          )),
    );
  }
}
