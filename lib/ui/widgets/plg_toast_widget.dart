/// 공통 토스트
/// 작성자 : jtmoon
/// 특이사항 : N/A
/// @copyright 한국선불카드(주)
import 'package:flutter/material.dart';


class PlgToastWidget extends HookConsumerWidget {
  const PlgToastWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Column(
      children: [
        Text('토스트'),
      ],
    );
  }
}
