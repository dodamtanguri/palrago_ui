import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:palrago_ui/ui/styles/colors.dart';
import 'package:palrago_ui/ui/styles/sizes.dart';
import 'package:palrago_ui/ui/styles/styles.dart';

class SearchInputWidget extends HookWidget {
  const SearchInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: TextField(
          controller: searchController,
          textAlignVertical: TextAlignVertical.bottom,
          decoration: InputDecoration(
            hintText: "상품명 또는 판매자를 검색하세요",
            hintStyle: PlgStyles.body1Grey_ff999999_16,
            hintTextDirection: TextDirection.ltr,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none),
            fillColor: PlgColor.black5_0d282828,
            filled: true,
            prefixIcon: const Icon(
              Icons.numbers_outlined,
              color: PlgColor.grey_cool_ff989a9e,
            ),
            suffixIcon: SizedBox(
              width: PlgSizes.wh18,
              height: PlgSizes.wh18,
              child: Image.asset('assets/images/ic_search_inactive.png'),
            ),
          ),
        ),
      ),
    );
  }
}
