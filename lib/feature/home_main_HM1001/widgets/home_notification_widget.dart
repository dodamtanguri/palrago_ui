import 'package:flutter/material.dart';
import 'package:palrago_ui/ui/styles/colors.dart';
import 'package:palrago_ui/ui/styles/sizes.dart';

class HomeNotificationWidget extends StatelessWidget {
  const HomeNotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      margin: EdgeInsets.all(100),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: PlgColor.tertiary_ffff4848,
            width: 2,
          ),
          shape: BoxShape.rectangle),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text('환불요청 거래가 있어요'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: PlgSizes.m10),
            child: Image.asset(
              'assets/images/5047.png',
              alignment: Alignment.centerRight,
            ),
          ),
        ],
      ),
    );
  }
}
