import 'package:flutter/material.dart';
import 'package:palrago_ui/feature/imageSlider/image_slider_widget.dart';

class ImageSliderView extends StatelessWidget {
  const ImageSliderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('이미지 슬라이더 위젯 테스트'),
      ),
      body: const Carousel(),
    );
  }
}
