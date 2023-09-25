/// 스토어 상세 페이지 app bar
///
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class StoreRefundNoticeWidget extends HookWidget {
  const StoreRefundNoticeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
      child: const Text('환불/유효기간 연장 안내 Listtile로 구현 예정'),
    );
  }
}
