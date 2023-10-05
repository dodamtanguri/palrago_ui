import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:palrago_ui/feature/market/widgets/market_tab_bar_widget.dart';
import 'package:palrago_ui/feature/recent/enums/tab_category.dart';
import 'package:palrago_ui/ui/styles/colors.dart';
import 'package:palrago_ui/ui/styles/margins.dart';
import 'package:palrago_ui/ui/styles/sizes.dart';
import 'package:palrago_ui/ui/styles/styles.dart';

class SearchTabButtonWidget extends HookWidget {
  const SearchTabButtonWidget({
    required this.category,
    required this.onPressed,
    required this.index,
    required this.selectIndex,
    super.key,
  });
  final StoreTabCategory category;
  final Function onPressed;
  final int index;
  final StoreTabCategory selectIndex;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => onPressed(index),
      style: OutlinedButton.styleFrom(
        splashFactory: NoSplash.splashFactory,
        side: selectIndex.tabId == index
            ? const BorderSide(width: 3.0, color: PlgColor.primary_ff1b9dd9)
            : const BorderSide(width: 0, color: Colors.transparent),
        shape: LinearBorder.bottom(),
      ),
      child: Text(
        category.title,
        style: selectIndex.tabId == index ? 
          PlgStyles.subtitle2Primary_ff1b9dd9_14 : PlgStyles.subtitle2B3_4d282828_14
      ),
    );
  }
}
