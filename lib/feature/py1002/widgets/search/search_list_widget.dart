import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:palrago_ui/feature/py1002/widgets/search/search_list_item_widget.dart';

class SearchListWidget extends HookWidget {
  const SearchListWidget(
      this.products, this.onProductRemoveClicked, this.onProductSelectClicked,
      {super.key});
  final OnProductRemoveClicked onProductRemoveClicked;
  final OnProductSelectClicked onProductSelectClicked;
  final List<ProductVo> products;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(''),
      ),
    );
  }
}
