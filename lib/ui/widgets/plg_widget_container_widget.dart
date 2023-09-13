/// 위젯 컨테이너
/// 작성자 : jtmoon
/// 특이사항 : N/A
/// @copyright 한국선불카드(주)
import 'package:flutter/material.dart';


class PlgWidgetContainerWidget extends HookConsumerWidget {
  const PlgWidgetContainerWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Column(
      children: [
        Text('위젯컨테이너'),
      ],
    );
  }
}
