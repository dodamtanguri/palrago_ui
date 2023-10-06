import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SearchTabBodyFoundMemberWidget extends HookWidget {
  const SearchTabBodyFoundMemberWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
          width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.blue,
    );
  }
}
