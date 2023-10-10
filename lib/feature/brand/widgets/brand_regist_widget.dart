import 'package:flutter/material.dart';
import 'package:palrago_ui/feature/store/widgets/store_button_widget.dart';
import 'package:palrago_ui/ui/styles/colors.dart';
import 'package:palrago_ui/ui/styles/margins.dart';
import 'package:palrago_ui/ui/styles/styles.dart';

class BrandRegistWidget extends StatelessWidget {
  const BrandRegistWidget({super.key});

  @override
  Widget build(BuildContext context) {
    void onRegistButtonClick() {
      print('브랜드 등록 하기 버튼 클릭');
    }

    void onPreviousButtonClick() {
      print('이전 페이지 이동 하기 버튼 클릭');
    }

    return Row(
      children: [
        SizedBox(
          width: 105,
          child: StoreButtonWidget(
            backgroundColor: PlgColor.primary_261b9dd9,
            onButtonClicked: onPreviousButtonClick,
            buttonTitle: '이전',
            textStyle: PlgStyles.subtitle1Primary_ff1b9dd9_16,
          ),
        ),
        PlgMargins.h8,
        SizedBox(
          width: 270,
          child: StoreButtonWidget(
            textStyle: PlgStyles.subtitle1White_ffffffff_16,
            backgroundColor: PlgColor.primary_ff1b9dd9,
            onButtonClicked: onRegistButtonClick,
            buttonTitle: '등록하기',
          ),
        ),
      ],
    );
  }
}
