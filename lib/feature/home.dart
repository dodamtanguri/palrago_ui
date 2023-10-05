import 'package:flutter/material.dart';
import 'package:palrago_ui/feature/imageSlider/image_slider_view.dart';
import 'package:palrago_ui/feature/market/market_view.dart';
import 'package:palrago_ui/feature/recent/recent_search_view.dart';
import 'package:palrago_ui/feature/recent/tab_button_test_view.dart';
import 'package:palrago_ui/feature/recent/widgets/search_tab_button_widget.dart';
import 'package:palrago_ui/feature/store/store_detail_view.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  pushPage(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                pushPage(
                    context,
                    const MarketView(
                      categories: [],
                      marketProductList: [],
                    ));
              },
              child: const Text('팔라고 장터'),
            ),
            ElevatedButton(
              onPressed: () {
                pushPage(context, const StoreDetailView());
              },
              child: const Text('스토어 상세 페이지'),
            ),
            ElevatedButton(
              onPressed: () {
                pushPage(context, const ImageSliderView());
              },
              child: const Text('이미지 슬라이더 위젯'),
            ),
            ElevatedButton(
              onPressed: () {
                pushPage(context, const RecentSearchView());
              },
              child: const Text('최근 본 상품 탭 페이지'),
            ),
            ElevatedButton(
              onPressed: () {
                pushPage(
                  context,
                  const TabButtonTestView(),
                );
              },
              child: const Text('최근 본 상품 탭 버튼 widget'),
            ),
          ],
        ),
      ),
    );
  }
}
