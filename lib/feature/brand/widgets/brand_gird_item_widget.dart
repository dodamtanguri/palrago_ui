import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:palrago_ui/feature/brand/models/brand_item.dart';
import 'package:palrago_ui/ui/styles/margins.dart';
import 'package:palrago_ui/ui/styles/sizes.dart';
import 'package:palrago_ui/ui/styles/styles.dart';


class BrandGridItemWidget extends HookWidget {
  final BrandItem brand;

  const BrandGridItemWidget({super.key, 
    required this.brand,
  });



  @override
  Widget build(BuildContext context) {
    final isSelected = useState<bool>(false);

    return GestureDetector(
      onTap: () => isSelected.value = !isSelected.value,
      child: Container(
        padding: const EdgeInsets.only(
            top: PlgSizes.m8,
            left: PlgSizes.m20,
            right: PlgSizes.m20), // Adjust padding to your requirement
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isSelected.value ? Colors.blue : Colors.transparent,
            width: 2,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(brand.imageUrl),
            ),
            PlgMargins.v8,
            Text(
              brand.title,
              style: PlgStyles.body3Black2_d9282828_13,
            ),
          ],
        ),
      ),
    );
  }
}
