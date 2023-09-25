/// 스토어 상세 페이지 app bar
///
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:palrago_ui/ui/styles/colors.dart';
import 'package:palrago_ui/ui/styles/sizes.dart';
import 'package:palrago_ui/ui/styles/styles.dart';

class StoreRefundNoticeWidget extends HookWidget {
  const StoreRefundNoticeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
            onTap: (){},
            title: const Text(
              '환불 / 유효기간 연장 안내',
              style: PlgStyles.body2Black_ff282828_14
            ),
            trailing: const Icon(Icons.arrow_forward_ios_outlined,
            weight: PlgSizes.wh4,
            size: PlgSizes.wh16,
            ),
          );
  }
}
