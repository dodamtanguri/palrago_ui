import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:palrago_ui/feature/recent/enums/tab_category.dart';
import 'package:palrago_ui/feature/recent/widgets/search_list_item_widget.dart';
import 'package:palrago_ui/feature/recent/widgets/search_list_widget.dart';
import 'package:palrago_ui/ui/styles/colors.dart';

class SearchTabBodyRecentlyProductWidget extends HookWidget {
  const SearchTabBodyRecentlyProductWidget({required this.products, super.key,required this.tag});
  final List<ProductVo> products;
   final StoreTabCategory tag;

  @override
  Widget build(BuildContext context) {
    return ListView(
       children: [
        SearchListWidget(products, (tabId, productId) { }, (tabId, productId) { })
       ],
    );
  }
}
