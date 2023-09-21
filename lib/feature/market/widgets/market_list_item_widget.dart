import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:palrago_ui/ui/styles/colors.dart';
import 'package:palrago_ui/ui/styles/margins.dart';
import 'package:palrago_ui/ui/styles/sizes.dart';
import 'package:palrago_ui/ui/styles/styles.dart';

@immutable
class MarketProductVo {
  final String brand;
  final String title;
  final int discount;
  final int price;
  final int palragoPrice;
  final String imageUrl;
  final DateTime registDate;
  final DateTime exprireDate;
  final bool isSoldOut;

  const MarketProductVo(
      {required this.brand,
      required this.title,
      required this.discount,
      required this.price,
      required this.palragoPrice,
      required this.imageUrl,
      required this.registDate,
      required this.exprireDate,
      required this.isSoldOut});
}

//아이템 선택했을 경우
typedef OnMarketProductSelectClicked = VoidCallback;

class MarketListItemWidget extends HookWidget {
  const MarketListItemWidget(this.marketProduct, this.onProductSelectClicked,
      {super.key});

  final MarketProductVo marketProduct;
  final OnMarketProductSelectClicked onProductSelectClicked;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SizedBox(
            width: 112,
            height: 112,
            child: Stack(
              children: [
                Image.asset(marketProduct.imageUrl),
                if (marketProduct.isSoldOut)
                  Container(
                    color: PlgColor.black7_b3282828.withOpacity(0.7),
                    alignment: Alignment.center,
                    child: const Text(
                      '판매완료',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  )
              ],
            ),
          ),
          PlgMargins.h12,
          Container(
            alignment: Alignment.bottomLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  marketProduct.brand,
                  style: PlgStyles.tinyGrey_ff999999_10,
                ),
                PlgMargins.v5,
                SizedBox(
                  width: 196,
                  height: PlgSizes.wh32,
                  child: Text(
                    marketProduct.title,
                    style: PlgStyles.caption2Black_ff282828_12,
                    overflow: TextOverflow.visible,
                    maxLines: 2,
                  ),
                ),
                PlgMargins.v8,
                Row(
                  children: [
                    Text(
                      '${marketProduct.discount}%',
                      style: PlgStyles.caption2Primary_ff1b9dd9_12,
                    ),
                    PlgMargins.v3,
                    Text(
                      '${marketProduct.price}원',
                      style: const TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: PlgColor.grey_ff999999,
                          fontWeight: FontWeight.w400,
                          //fontFamily: 'SpoqaHanSansNeo',
                          fontStyle: FontStyle.normal,
                          fontSize: PlgSizes.f10),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      '${marketProduct.palragoPrice}원',
                      style: PlgStyles.subtitle1Black_ff282828_16,
                    ),
                    PlgMargins.v5,
                    SizedBox(
                      width: PlgSizes.wh52,
                      height: PlgSizes.wh20,
                      child: FilledButton(
                        onPressed: () {},
                        style: FilledButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                vertical: 0, horizontal: 0),
                            backgroundColor: PlgColor.primary_261b9dd9),
                        child: const Text(
                          '팔라고가',
                          style: PlgStyles.tinyPrimary_ff1b9dd9_10,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 100,
            color: Colors.amber,
          ),
        ],
      ),
    );
  }
}
