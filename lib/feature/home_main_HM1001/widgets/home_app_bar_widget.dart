import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:palrago_ui/ui/styles/colors.dart';
import 'package:palrago_ui/ui/styles/margins.dart';
import 'package:palrago_ui/ui/styles/sizes.dart';
import 'package:palrago_ui/ui/styles/styles.dart';

class HomeAppBarWidget extends HookWidget implements PreferredSizeWidget {
  const HomeAppBarWidget({required this.point, super.key});
  final String point;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Padding(
        padding: const EdgeInsets.symmetric(vertical: PlgSizes.m18),
        child: Row(
          children: [
            Image.asset('assets/images/ico_coin.png'),
            PlgMargins.h4,
            Text(point),
          ],
        ),
      ),
      centerTitle: false,
      titleTextStyle: PlgStyles.h6Black_ff282828_20,
      actions: [
        SizedBox(
          width: PlgSizes.wh40,
          height: PlgSizes.wh40,
          child: Image.asset('assets/images/ico_aleart.png'),
        ),
        PlgMargins.h2,
        SizedBox(
            width: PlgSizes.wh40,
            height: PlgSizes.wh40,
            child: Image.asset('assets/images/ico_28_my_bold.png'))
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
