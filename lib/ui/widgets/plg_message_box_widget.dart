/// 메시지 박스
/// 작성자 : jtmoon
/// 특이사항 : N/A
/// @copyright 한국선불카드(주)
import 'package:flutter/material.dart';


class PlgMessageBoxWidget extends HookConsumerWidget {
  const PlgMessageBoxWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Column(
      children: [
        Text('메시지박스'),
      ],
    );
  }
}
