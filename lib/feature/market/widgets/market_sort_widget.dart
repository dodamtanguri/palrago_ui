import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:palrago_ui/feature/market/widgets/popup/market_brand_filter_widget.dart';
import 'package:palrago_ui/ui/styles/margins.dart';

enum MarketSort { recently() }

class MarketSortWidget extends HookWidget {
  const MarketSortWidget({super.key});

  @override
  Widget build(BuildContext context) {
    void onBrandFilterClicked() {
      showModalBottomSheet(
          context: context,
          //모달 뒤쪽 컬러 말하는거임
          isScrollControlled: true,
          //barrierColor: Colors.red,
          backgroundColor: Colors.transparent,
          builder: (context) => const BrandFilterPopUp());
    }

    void onTimeFilterClicked() {
      showModalBottomSheet(
          context: context,
          //모달 뒤쪽 컬러 말하는거임
          isScrollControlled: true,
          //barrierColor: Colors.red,
          backgroundColor: Colors.transparent,
          builder: (context) => const BrandFilterPopUp());
    }

    void onSortFilterClicked() {
      showModalBottomSheet(
          context: context,
          //모달 뒤쪽 컬러 말하는거임
          isScrollControlled: true,
          //barrierColor: Colors.red,
          backgroundColor: Colors.transparent,
          builder: (context) => const BrandFilterPopUp());
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: onBrandFilterClicked,
          child: Row(
            children: [
              const Text(
                '전체브랜드',
              ),
              PlgMargins.h6,
              Image.asset('assets/images/ic_arrow_large_black.png'),
            ],
          ),
        ),
        PlgMargins.h96,
        Wrap(
          children: [
            GestureDetector(
              onTap: onTimeFilterClicked,
              child: Row(
                children: [
                  Image.asset('assets/images/filter.png'),
                  PlgMargins.h4,
                  const Text('필터'),
                ],
              ),
            ),
            PlgMargins.h10,
            GestureDetector(
              onTap: onSortFilterClicked,
              child: Row(
                children: [
                  Image.asset('assets/images/align.png'),
                  PlgMargins.h4,
                  const Text('정렬'),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
