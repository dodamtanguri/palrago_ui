import 'package:flutter/material.dart';
import 'package:palrago_ui/feature/py1002/widgets/search_Input_widget.dart';
import 'package:palrago_ui/feature/py1002/widgets/tabBarView.dart';
import 'package:palrago_ui/ui/styles/margins.dart';
import 'package:palrago_ui/ui/styles/sizes.dart';
import 'package:palrago_ui/ui/styles/styles.dart';

class RecentWatchProductScreen extends StatelessWidget {
  const RecentWatchProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          '검색',
          style: PlgStyles.h6Black_ff282828_20,
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: PlgSizes.wh20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // 검색창
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: PlgSizes.wh44,
              child: const SearchInputWidget(),
            ),
            PlgMargins.h10,
            const Expanded(
              child: TabBarViewWidget(
                //id 값 
                tabBarList: [
                  Tab(text: '최근 검색어'),
                  Tab(text: '인기 검색어'),
                  Tab(text: '최근 본 상품'),
                  Tab(text: '찾은 회원'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
