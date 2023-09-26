import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:palrago_ui/feature/store/widgets/store_button_widget.dart';
import 'package:palrago_ui/ui/styles/colors.dart';
import 'package:palrago_ui/ui/styles/margins.dart';
import 'package:palrago_ui/ui/styles/sizes.dart';
import 'package:palrago_ui/ui/styles/styles.dart';

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

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: PlgSizes.m32),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: PlgSizes.m16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Text(
                      '주문수량',
                      style: PlgStyles.subtitle2Black_ff282828_14,
                    ),
                    PlgMargins.h10,
                    Text(
                      '최대 10개',
                      style: PlgStyles.captionGrey_ff999999_12,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: PlgSizes.wh24,
                      height: PlgSizes.wh24,
                      child: OutlinedButton(
                        onPressed: _decrementOrder,
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.all(PlgSizes.m6),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                        ),
                        child: const Icon(
                          Icons.remove,
                          size: PlgSizes.wh12,
                        ),
                      ),
                    ),
                    PlgMargins.h8,
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: PlgSizes.m12),
                      child: Text(
                        '${orderCount.value}',
                        style: PlgStyles.body1Black_ff282828_16,
                      ),
                    ),
                    PlgMargins.h8,
                    SizedBox(
                      width: PlgSizes.wh24,
                      height: PlgSizes.wh24,
                      child: OutlinedButton(
                        onPressed: _incrementOrder,
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.all(PlgSizes.m6),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                        ),
                        child: const Icon(
                          Icons.add,
                          size: PlgSizes.wh12,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 1,
            color: PlgColor.surface_fff8f8f8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: PlgSizes.m18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '총 주문 금액',
                  style: PlgStyles.subtitle2Black_ff282828_14,
                ),
                Text('${orderCount.value * price}원',
                    style: PlgStyles.subtitle1Primary_ff1b9dd9_16)
              ],
            ),
          ),
          PlgMargins.v16,
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: StoreButtonWidget(
              textStyle: PlgStyles.subtitle1White_ffffffff_16,
              backgroundColor: PlgColor.primary_ff1b9dd9,
              onButtonClicked: () {},
              buttonTitle: '결제하기',
              horizontalMargin: 138,
            ),
          ),
        ],
      ),
    );
  }
}
