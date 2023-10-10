import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:palrago_ui/feature/recent/enums/tab_category.dart';
import 'package:palrago_ui/feature/recent/models/product_item.dart';
import 'package:palrago_ui/feature/recent/widgets/search_list_item_widget.dart';
import 'package:palrago_ui/ui/styles/colors.dart';
import 'package:palrago_ui/ui/styles/margins.dart';
import 'package:palrago_ui/ui/styles/styles.dart';

class SearchTabBodyRecentlyProductWidget extends HookWidget {
  const SearchTabBodyRecentlyProductWidget(
      {required this.products, required this.tag, super.key});

  final List<ProductVo> products;
  final StoreTabCategory tag;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Map through the products and create a list of widgets
          ...products.map(
            (product) => SearchListItemWidget(
              product,
              (int tabId, int productId) {},
              (int tabId, int productId) {},
            ),
          ),
          PlgMargins.v20,
          if (products.isNotEmpty)
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.delete_outline_rounded,
                  color: PlgColor.grey_ff999999,
                ),
                PlgMargins.h4,
                Text(
                  '전체삭제',
                  style: PlgStyles.body2Grey_ff999999_14,
                )
              ],
            ),
        ],
      ),
    );
  }
}
