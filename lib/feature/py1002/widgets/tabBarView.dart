import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:palrago_ui/ui/styles/colors.dart';
import 'package:palrago_ui/ui/styles/margins.dart';
import 'package:palrago_ui/ui/styles/sizes.dart';
import 'package:palrago_ui/ui/styles/styles.dart';

class TabBarViewWidget extends HookWidget {
  const TabBarViewWidget({super.key, required this.tabBarList});
  final List<Widget> tabBarList;

  @override
  Widget build(BuildContext context) {
    final controller = useTabController(initialLength: tabBarList.length);
    final index = useState(0);

    controller.addListener(() {
      index.value = controller.index;
    });

    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Column(
          children: [
            TabBar(
              isScrollable: true,
              unselectedLabelColor: PlgColor.grey_cool_ff989a9e,
              unselectedLabelStyle: PlgStyles.subtitle2Grey_ff999999_14,
              tabs: tabBarList,
              onTap: (index) {},
              controller: controller,
              labelColor: PlgColor.primary_ff1b9dd9,
              indicatorColor: PlgColor.primary_ff1b9dd9,
            ),
          ],
        ),
        elevation: 0,
      ),
      body: TabBarView(controller: controller, children: tabBarList),
    );
  }
}

class ProductItemWidget extends HookWidget {
  const ProductItemWidget(
    this.productName,
    this.price,
    this.discount,
    this.productDescription, {
    super.key,
  });
  final String productName;
  final String productDescription;
  final int price;
  final int discount;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
      ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6), color: Colors.amber),
        child: Row(
          children: [
            SizedBox(
              width: 96,
              height: 96,
              child: Image.asset('assets/images/img.png'),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productName,
                  style: PlgStyles.captionGrey_ff999999_12,
                ),
                PlgMargins.v5,
                Text(
                  productDescription,
                  style: PlgStyles.captionBlack2_ff282828_12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '$price 원',
                      style: PlgStyles.body1Black_ff282828_16,
                    ),
                    PlgMargins.h7,
                    const Text(
                      '72%',
                      style: PlgStyles.body2Primary_ff1b9dd9_14,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
