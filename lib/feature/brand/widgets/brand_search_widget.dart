import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:palrago_ui/ui/styles/colors.dart';
import 'package:palrago_ui/ui/styles/margins.dart';
import 'package:palrago_ui/ui/styles/styles.dart';

class BrandSearchBar extends HookWidget {
  const BrandSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: const Column(
        children: [
          TextField(
            textAlignVertical: TextAlignVertical.bottom,
            decoration: InputDecoration(
              hintText: "브랜드 검색 예) 스타벅스",
              hintStyle: PlgStyles.body1Grey_ff999999_16,
              hintTextDirection: TextDirection.ltr,
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: PlgColor.black1_1a282828),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: PlgColor.black1_1a282828),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: PlgColor.black1_1a282828),
              ),
            ),
          ),
          PlgMargins.v8,
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '''브랜드를 목록에서 선택하거나 검색하세요.
(검색되는 브랜드가 없는 경우 직접 입력 후 다음 단계로 진행)''',
              style: PlgStyles.captionB7_b3282828_12,
            ),
          ),
        ],
      ),
    );
  }
}
