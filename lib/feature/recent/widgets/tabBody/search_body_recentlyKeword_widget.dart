import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:palrago_ui/feature/recent/enums/tab_category.dart';
import 'package:palrago_ui/ui/styles/colors.dart';

class SearchTabBodyRecentlyKeywordWidget extends HookWidget {
  const SearchTabBodyRecentlyKeywordWidget({super.key, required this.tag});
  final StoreTabCategory tag;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.cyan,
      child: Text(tag.title),
    );
  }
}
