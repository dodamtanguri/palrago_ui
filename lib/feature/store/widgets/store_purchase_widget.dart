/// 스토어 상세 페이지 app bar
///
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class StorePurchaseDetailWidget extends HookWidget {
  const StorePurchaseDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(

      color: Colors.amber,
      child: Text('선물하기/구매하기 버튼'),
    );
  }
}
