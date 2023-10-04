import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:palrago_ui/ui/styles/colors.dart';
import 'package:palrago_ui/ui/styles/sizes.dart';
import 'package:palrago_ui/ui/styles/styles.dart';

typedef OnCloseClicked = void Function();

class SearchBarWidgetByFlexible extends HookWidget {
  const SearchBarWidgetByFlexible(this.onCloseClicked, {super.key});
  final OnCloseClicked onCloseClicked;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: PlgSizes.wh44,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: PlgColor.black5_0d282828,
      ),
      child: Padding(
        padding: const EdgeInsets.only(
            left: PlgSizes.m8,
            right: PlgSizes.m14,
            top: PlgSizes.m12,
            bottom: PlgSizes.m11),
        child: Row(
          children: [
            const Flexible(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.numbers_outlined,
                    color: PlgColor.grey_cool_ff989a9e,
                  )
                ],
              ),
            ),
            const Flexible(
              flex: 9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
                      textAlignVertical: TextAlignVertical.bottom,
                      decoration: InputDecoration(
                        hintText: "상품명 또는 판매자를 검색하세요",
                        hintStyle: PlgStyles.body1Grey_ff999999_16,
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: PlgSizes.wh18,
                    height: PlgSizes.wh18,
                    child: Image.asset('assets/images/ic_search_inactive.png'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
