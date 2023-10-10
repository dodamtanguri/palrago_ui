import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:palrago_ui/feature/recent/models/product_item.dart';
import 'package:palrago_ui/ui/styles/margins.dart';
import 'package:palrago_ui/ui/styles/sizes.dart';
import 'package:palrago_ui/ui/styles/styles.dart';

typedef OnProductEventCallback = void Function(int tabId, int productId);

typedef OnProductRemoveClicked = OnProductEventCallback;
typedef OnProductSelectClicked = OnProductEventCallback;

class SearchListItemWidget extends HookWidget {
  const SearchListItemWidget(
      this.product, this.onProductRemoveClicked, this.onProductSelectClicked,
      {super.key});
  final OnProductRemoveClicked onProductRemoveClicked;
  final OnProductSelectClicked onProductSelectClicked;
  final ProductVo product;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white, // Light grey background

        borderRadius: BorderRadius.circular(10), // Rounded corner
      ),
      margin: const EdgeInsets.symmetric(
         vertical: PlgSizes.wh10),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: PlgSizes.wh20, vertical: PlgSizes.wh20),
        child: Stack(
          children: [
            Row(
              children: [
                SizedBox(
                  width: PlgSizes.wh96,
                  height: PlgSizes.wh96,
                  child: Image.asset(product.imageUrl),
                ),
                PlgMargins.h10,
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.brand,
                        style: PlgStyles.captionGrey_ff999999_12,
                      ),
                      PlgMargins.v5,
                      Text(
                        product.title,
                        maxLines: 5, // Maximum number of lines
                        overflow: TextOverflow.visible,
                        style: PlgStyles.captionRightBlack_ff282828_12,
                      ),
                      PlgMargins.v10,
                      Row(
                        children: [
                          Text(
                            '${product.price}원',
                            style: PlgStyles.subtitle1Black_ff282828_16,
                          ),
                          PlgMargins.h5,
                          Text(
                            '${product.discount}%',
                            style: PlgStyles.subtitle2Primary_ff1b9dd9_14,
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              top: -18,
              right: -15,
              child: IconButton(
                icon: const Icon(Icons.close_rounded),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
