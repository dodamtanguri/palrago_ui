import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class StoreProductPictureWidget extends StatelessWidget {
  const StoreProductPictureWidget({super.key, required this.imageUrl});
  final List<String> imageUrl;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: imageUrl.length,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
          Text(itemIndex.toString()),
      options: CarouselOptions(autoPlay: false),
    );
  }
}
