import 'package:flutter/material.dart';
import 'package:palrago_ui/ui/styles/colors.dart';
import 'package:palrago_ui/ui/styles/sizes.dart';

class StoreProductPictureWidget extends StatefulWidget {
  const StoreProductPictureWidget({super.key, required this.imageUrls});
  final List<String> imageUrls;

  @override
  State<StoreProductPictureWidget> createState() =>
      _StoreProductPictureWidgetState();
}

class _StoreProductPictureWidgetState extends State<StoreProductPictureWidget> {
  late PageController pageController;

  int activePage = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController(viewportFraction: 0.8, initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    List imgList = widget.imageUrls;

    return Column(
      children: [
        SizedBox(
          height: 360,
          child: PageView.builder(
            itemCount: widget.imageUrls.length,
            pageSnapping: true,
            controller: pageController,
            onPageChanged: (page) {
              setState(() {
                activePage = page;
              });
            },
            itemBuilder: (context, pagePosition) {
              bool active = pagePosition == activePage;
              return slider(imgList, pagePosition, active);
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
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      margin: const EdgeInsets.all(PlgSizes.m10),
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(images[pagePosition]))),
    );
  }

  imageAnimation(PageController animation, images, pagePosition) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, widget) {
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
                ? PlgColor.black_ff282828
                : PlgColor.black15_26282828,
            shape: BoxShape.circle),
      );
    });
  }
}
