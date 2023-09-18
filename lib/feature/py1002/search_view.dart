import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:palrago_ui/feature/py1002/widgets/search/search_list_item_widget.dart';
import 'package:palrago_ui/feature/py1002/widgets/search/search_tab_bar_widget.dart';

typedef ProductList = List<ProductVo>;

class SearchView extends HookWidget {
  const SearchView(
      {super.key, required this.categories, required this.productList});
  final List<TabCategory> categories;
  final List<ProductList> productList;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
