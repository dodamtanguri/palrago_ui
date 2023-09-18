import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:palrago_ui/feature/py1002/widgets/search/search_list_item_widget.dart';
import 'package:palrago_ui/feature/py1002/widgets/search/search_tab_bar_widget.dart';

typedef OnRemoveAllClicked = void Function(TabCategory category);

class SearchTabBodyWidget extends HookWidget {
  const SearchTabBodyWidget(
      this.category, this.onRemoveAllClicked, this.onProductRemoveClicked, this.onProductSelectClicked, this.products, 
      {super.key});
  final TabCategory category;
  final OnRemoveAllClicked onRemoveAllClicked;
  final OnProductRemoveClicked onProductRemoveClicked;
  final OnProductSelectClicked onProductSelectClicked;
  final List<ProductVo> products;
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
