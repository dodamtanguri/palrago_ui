import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:palrago_ui/feature/market/widgets/market_tab_bar_widget.dart';
import 'package:palrago_ui/ui/styles/colors.dart';
import 'package:palrago_ui/ui/styles/margins.dart';
import 'package:palrago_ui/ui/styles/sizes.dart';

class MarketTabButtonWidget extends HookWidget {
  const MarketTabButtonWidget({
    required this.category,
    required this.categoryImage,
    required this.onPressed,
    required this.index,
    required this.selectedIndex,
    super.key,
  });
  final PlgMarketProductCategory category;
  final String categoryImage;
  final Function onPressed;
  final int index;
  final PlgMarketProductCategory selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OutlinedButton(
          onPressed: () => onPressed(index),
          style: OutlinedButton.styleFrom(
            splashFactory: NoSplash.splashFactory,
            minimumSize: const Size(PlgSizes.wh96, PlgSizes.wh36),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(999),
            ),
            side: BorderSide(
                width: 1,
                color: selectedIndex == index
                    ? PlgColor.primary_ff1b9dd9
                    : PlgColor.black15_26282828),
          ),
          child: Row(
            children: [
              Image.asset(categoryImage),
              PlgMargins.v4,
              Text(
                category.categoryTitle,
                style: TextStyle(
                    color: selectedIndex == index
                        ? PlgColor.primary_ff1b9dd9
                        : PlgColor.black15_26282828),
              ),
            ],
          ),
        ),
        PlgMargins.h10,
      ],
    );
  }
}
