import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SearchTabBodyPopularWidget extends HookWidget {
  const SearchTabBodyPopularWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.black,
    );
  }
}
