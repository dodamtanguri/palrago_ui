import 'package:flutter/material.dart';
import 'package:palrago_ui/feature/store/store_detail_view.dart';
import 'package:palrago_ui/ui/styles/margins.dart';
import 'package:palrago_ui/ui/styles/sizes.dart';
import 'package:palrago_ui/ui/styles/styles.dart';

class OptionItemWidget extends StatelessWidget {
  const OptionItemWidget({super.key, required this.product});
  final StoreProductVo product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: PlgSizes.m20,
          left: PlgSizes.m32,
          right: PlgSizes.m32,
          bottom: PlgSizes.m40),
      child: Row(
        children: [
          Image.asset(
            'assets/images/img.png',
            width: PlgSizes.wh56,
            height: PlgSizes.wh56,
          ),
          PlgMargins.h16,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: Text(
                    product.title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    textAlign: TextAlign.left,
                    style: PlgStyles.body2Black_ff282828_14,
                  ),
                ),
                PlgMargins.v7,
                Text('${product.palragoPrice}원',
                    style: PlgStyles.subtitle1Black_ff282828_16),
              ],
            ),
          )
        ],
      ),
    );
  }
}
