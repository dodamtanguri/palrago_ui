/// 스토어 상세 페이지 app bar
/// 
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class StoreProductDetailWidget extends HookWidget {
  const StoreProductDetailWidget({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: Text('상품 상세 내용'),
    );
  }
}
