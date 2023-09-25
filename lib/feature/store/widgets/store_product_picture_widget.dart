import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:palrago_ui/ui/styles/colors.dart';

class StoreProductPictureWidget extends StatefulWidget {
  const StoreProductPictureWidget({super.key, required this.imageUrl});
  final List<String> imageUrl;

  @override
  State<StoreProductPictureWidget> createState() =>
      _StoreProductPictureWidgetState();
}

class _StoreProductPictureWidgetState extends State<StoreProductPictureWidget> {
  late PageController pageController =
      PageController(viewportFraction: 0.8, initialPage: 1);
  int activePage = 1;
  @override
  Widget build(BuildContext context) {
    // List imgList = widget.imageUrl.map((e) => Image.asset(e)).toList();
    List imgList = widget.imageUrl;
    int activePage = 1;
    return Column(
      children: [
        SizedBox(
          height: 360,
          child: PageView.builder(
            pageSnapping: true,
            itemCount: widget.imageUrl.length,
            controller: pageController,
            itemBuilder: (context, pagePosition) {
              bool active = pagePosition == activePage;

              return slider(imgList, pagePosition, active);
            },
            onPageChanged: (page) {
              setState(() {
                activePage = page;
              });
            },
          ),
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: indicators(imgList.length, activePage))
      ],
    );
  }

  AnimatedContainer slider(images, pagePosition, active) {
    double margin = active ? 10 : 20;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOutCubic,
      margin: EdgeInsets.all(margin),
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(images[pagePosition]))),
    );
  }

  imageAnimation(PageController animation, images, pagePosition) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, widget) {
        print(pagePosition);

        return SizedBox(
          width: 200,
          height: 200,
          child: widget,
        );
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        child: Image.asset(images[pagePosition]),
      ),
    );
  }

  List<Widget> indicators(imagesLength, currentIndex) {
    return List<Widget>.generate(imagesLength, (index) {
      return Container(
        margin: const EdgeInsets.all(3),
        width: 6,
        height: 6,
        decoration: BoxDecoration(
            color: currentIndex == index
                ? PlgColor.black15_26282828
                : PlgColor.black_ff282828,
            shape: BoxShape.circle),
      );
    });
  }
}
