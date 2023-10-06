import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:palrago_ui/ui/styles/colors.dart';

class SearchTabBodyRecentlyProductWidget extends HookWidget {
  const SearchTabBodyRecentlyProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: PlgColor.fill_surface85_d9f8f8f8,
    );
  }
}
