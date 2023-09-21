import 'package:flutter/material.dart';
import 'package:palrago_ui/ui/styles/sizes.dart';

class BrandFilterPopUp extends StatelessWidget {
  const BrandFilterPopUp({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.70,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(PlgSizes.wh14),
      ),
      child: Scaffold(
        backgroundColor: Colors.grey.shade50,
        body: const Text(
          '브랜드 선택',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
