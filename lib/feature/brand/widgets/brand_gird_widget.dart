import 'package:flutter/material.dart';
import 'package:palrago_ui/feature/brand/models/brand_item.dart';
import 'package:palrago_ui/feature/brand/widgets/brand_gird_item_widget.dart';

class BrandGridWidget extends StatelessWidget {
  final List<BrandItem> brands;

  const BrandGridWidget({
    super.key,
    required this.brands,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 11,
        mainAxisSpacing: 4,
      ),
      itemBuilder: (context, index) {
        return BrandGridItemWidget(brand: brands[index]);
      },
      itemCount: brands.length,
    );
  }
}
