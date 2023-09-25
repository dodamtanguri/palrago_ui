/// 스토어 상세 페이지 app bar
///
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:palrago_ui/ui/styles/colors.dart';
import 'package:palrago_ui/ui/styles/styles.dart';

class StoreAppBarWidget extends HookWidget implements PreferredSizeWidget {
  const StoreAppBarWidget({super.key});
  
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      title: const Text('상품상세'),
      centerTitle: false,
      titleTextStyle: PlgStyles.h6Black_ff282828_20,
      actions: [
        IconButton(
          icon: const Icon(Icons.close_outlined),
          onPressed: () {},
          color: PlgColor.grey_ff999999,
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
