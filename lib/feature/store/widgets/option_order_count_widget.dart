import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class OptionOrderCountWidget extends HookWidget {
  const OptionOrderCountWidget({super.key, required this.price});
  final int price;

  @override
  Widget build(BuildContext context) {
    final orderCount = useState(1);
    // Set this to your item's price

    void _incrementOrder() {
      if (orderCount.value < 10) {
        orderCount.value++;
      }
    }

    void _decrementOrder() {
      if (orderCount.value > 1) {
        orderCount.value--;
      }
    }

    return Column(
      children: [
        Row(
          children: [
            const Text('주문수량'),
            const Text('최대 10개 '),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: _incrementOrder,
            ),
            Text('${orderCount.value}'),
            IconButton(
              icon: const Icon(Icons.remove),
              onPressed: _decrementOrder,
            ),
          ],
        ),
        Text('총 주문 금액: ${orderCount.value * price} 원'),
      ],
    );
  }
}
