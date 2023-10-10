// 브랜드 선택/ 입력 페이지

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:palrago_ui/feature/brand/models/brand_item.dart';
import 'package:palrago_ui/feature/brand/widgets/brand_gird_widget.dart';
import 'package:palrago_ui/feature/brand/widgets/brand_regist_widget.dart';
import 'package:palrago_ui/feature/brand/widgets/brand_search_widget.dart';
import 'package:palrago_ui/feature/store/widgets/store_app_bar_widget.dart';
import 'package:palrago_ui/ui/styles/margins.dart';

import 'package:palrago_ui/ui/styles/sizes.dart';

final List<BrandItem> dummyBrands = [
  BrandItem(
    imageUrl: 'assets/images/brand_logo.png',
    title: 'Brand 1',
    id: 'b1',
  ),
  BrandItem(
    imageUrl: 'assets/images/brand_logo.png',
    title: 'Brand 2',
    id: 'b2',
  ),
  BrandItem(
    imageUrl: 'assets/images/brand_logo.png',
    title: 'Brand 3',
    id: 'b3',
  ),
  BrandItem(
    imageUrl: 'assets/images/brand_logo.png',
    title: 'Brand 4',
    id: 'b4',
  ),
  BrandItem(
    imageUrl: 'assets/images/brand_logo.png',
    title: 'Brand 4',
    id: 'b4',
  ),
  BrandItem(
    imageUrl: 'assets/images/brand_logo.png',
    title: 'Brand 4',
    id: 'b4',
  ),
  BrandItem(
    imageUrl: 'assets/images/brand_logo.png',
    title: 'Brand 4',
    id: 'b4',
  ),
];

class BrandSearchView extends HookWidget {
  const BrandSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const StoreAppBarWidget(title: '브랜드 선택'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: PlgSizes.m20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const BrandSearchBar(),
                PlgMargins.v20,
                BrandGridWidget(brands: dummyBrands),
                PlgMargins.v20,
                const BrandRegistWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
