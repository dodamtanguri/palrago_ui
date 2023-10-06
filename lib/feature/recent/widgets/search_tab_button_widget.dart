import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:palrago_ui/feature/recent/enums/tab_category.dart';
import 'package:palrago_ui/ui/styles/colors.dart';
import 'package:palrago_ui/ui/styles/styles.dart';

class SearchTabButtonWidget extends HookWidget {
  const SearchTabButtonWidget({
    required this.tag,
    required this.onPressed,
    required this.selected,
    super.key,
  });
  final StoreTabCategory tag;
  final void Function(StoreTabCategory) onPressed;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => onPressed(tag),
      style: OutlinedButton.styleFrom(
        splashFactory: NoSplash.splashFactory,
        side: selected
            ? const BorderSide(width: 3.0, color: PlgColor.primary_ff1b9dd9)
            : const BorderSide(width: 0, color: Colors.transparent),
        shape: LinearBorder.bottom(),
      ),
      child: Text(
        tag.title,
        style: selected ? 
          PlgStyles.subtitle2Primary_ff1b9dd9_14 : PlgStyles.subtitle2B3_4d282828_14
      ),
    );
  }
}
