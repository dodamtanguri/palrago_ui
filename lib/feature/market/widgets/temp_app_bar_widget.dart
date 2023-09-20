import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:palrago_ui/ui/styles/styles.dart';

class TestTitleBarWidet extends HookWidget implements PreferredSizeWidget {
  const TestTitleBarWidet({super.key});

  @override
  Widget build(BuildContext context) {
    final searchIcon = Image.asset(
      "assets/images/icon_area.png",
    );
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      title: const Text('팔라고장터'),
      centerTitle: false,
      titleTextStyle: PlgStyles.h6Black_ff282828_20,
      actions: [
        IconButton(
          icon: searchIcon,
          color: Colors.black,
          onPressed: () {},
        ),
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            'assets/images/ico_28_my_bold.png',
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
