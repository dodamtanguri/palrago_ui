import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

typedef OnCloseClicked = void Function();

class SearchBarWidget extends HookWidget {
  const SearchBarWidget(this.onCloseClicked, {super.key});
  final OnCloseClicked onCloseClicked;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
