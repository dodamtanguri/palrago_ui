/// 스토어 상세 페이지 app bar
///
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:palrago_ui/feature/store/store_detail_view.dart';
import 'package:palrago_ui/feature/store/widgets/store_product_picture_widget.dart';
import 'package:palrago_ui/ui/styles/colors.dart';
import 'package:palrago_ui/ui/styles/margins.dart';
import 'package:palrago_ui/ui/styles/sizes.dart';
import 'package:palrago_ui/ui/styles/styles.dart';

typedef OnProductGiftClicked = VoidCallback;
typedef OnPurchaseClicked = VoidCallback;

class StoreProductDetailWidget extends HookWidget {
  const StoreProductDetailWidget(this.product, {super.key});

  final StoreProductVo product;
  //선물하기 버튼 클릭시

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: PlgSizes.m20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              StoreProductPictureWidget(
                imageUrl: product.imageUrl,
              ),
              Text(
                product.brand,
                style: PlgStyles.body2Grey_ff999999_14,
              ),
              PlgMargins.v6,
              SizedBox(
                height: PlgSizes.wh64,
                child: Text(
                  product.title,
                  style: PlgStyles.body1Black_ff282828_16,
                ),
              ),
              Text(
                '${product.price}',
                style: const TextStyle(
                    decoration: TextDecoration.lineThrough,
                    color: PlgColor.grey_ff999999,
                    fontWeight: FontWeight.w400,
                    //fontFamily: 'SpoqaHanSansNeo',
                    fontStyle: FontStyle.normal,
                    fontSize: PlgSizes.f14),
              ),
              PlgMargins.v6,
              Row(
                children: [
                  Text(
                    '${product.palragoPrice}',
                    style: PlgStyles.h6Black_ff282828_20,
                  ),
                  const Text(
                    ' 원',
                    style: PlgStyles.body2Grey_ff999999_14,
                  ),
                ],
              ),
              PlgMargins.v16,
            ],
          ),
        ),
        const Divider(
          thickness: 12,
          color: PlgColor.black15_26282828,
        ),
        Padding(
          padding: const EdgeInsets.only(
              left: PlgSizes.m20,
              right: PlgSizes.m20,
              top: PlgSizes.m24,
              bottom: PlgSizes.m32),
          child: Text(
            product.description,
            style: const TextStyle(
              color: PlgColor.black85_d9282828,
              fontWeight: FontWeight.w400,
              //fontFamily: 'SpoqaHanSansNeo',
              fontStyle: FontStyle.normal,
              fontSize: PlgSizes.f12,
              height: 2,
            ),
          ),
        ),
        PlgMargins.v32,
      ],
    );
  }
}
