import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:palrago_ui/feature/market/widgets/market_tab_bar_widget.dart';
import 'package:palrago_ui/ui/styles/colors.dart';
import 'package:palrago_ui/ui/styles/margins.dart';
import 'package:palrago_ui/ui/styles/sizes.dart';
import 'package:palrago_ui/ui/styles/styles.dart';

class MarketTabButtonWidget extends HookWidget {
  const MarketTabButtonWidget(
    this.category,
    this.categoryImage, {
    super.key,
  });
  final PlgMarketProductCategory category;
  final String categoryImage;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(PlgSizes.wh96, PlgSizes.wh36),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(999),
        ),
        side: const BorderSide(width: 1, color: PlgColor.primary_ff1b9dd9),
      ),
      child: Row(
        children: [
          Image.asset(categoryImage),
          PlgMargins.v4,
          Text(
            category.categoryTitle,
          ),
        ],
      ),
      onPressed: () {},
    );
  }
}
