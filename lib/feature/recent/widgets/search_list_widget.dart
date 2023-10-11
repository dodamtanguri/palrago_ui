import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:palrago_ui/feature/recent/widgets/search_list_item_widget.dart';

import '../models/product_item.dart';

class SearchListWidget extends HookWidget {
  const SearchListWidget(
      this.products, this.onProductRemoveClicked, this.onProductSelectClicked,
      {super.key});
  final OnProductRemoveClicked onProductRemoveClicked;
  final OnProductSelectClicked onProductSelectClicked;
  final List<ProductVo> products;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:
            products.map((product) => SearchListItemWidget(product)).toList(),
      ),
    );
  }
}
