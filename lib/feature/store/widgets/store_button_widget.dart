import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:palrago_ui/ui/styles/sizes.dart';

typedef OnButtonClicked = VoidCallback;

class StoreButtonWidget extends HookWidget {
  const StoreButtonWidget(
      {required this.textStyle,
      required this.backgroundColor,
      required this.onButtonClicked,
 
      required this.buttonTitle,
      super.key});
  final String buttonTitle;

  final Color backgroundColor;
  final TextStyle textStyle;
  final OnButtonClicked onButtonClicked;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onButtonClicked,
      style: FilledButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: PlgSizes.m18),
        child: Text(buttonTitle, style: textStyle),
      ),
    );
  }
}
