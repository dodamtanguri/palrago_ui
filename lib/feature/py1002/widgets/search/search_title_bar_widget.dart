import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

typedef OnCloseClicked = VoidCallback;

class SearchTitleBarWidget extends HookWidget {
  const SearchTitleBarWidget(this.onCloseClicked, {super.key});
  final OnCloseClicked onCloseClicked;
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
