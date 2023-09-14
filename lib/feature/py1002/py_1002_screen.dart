import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:palrago_ui/ui/styles/colors.dart';
import 'package:palrago_ui/ui/styles/margins.dart';
import 'package:palrago_ui/ui/styles/sizes.dart';
import 'package:palrago_ui/ui/styles/styles.dart';

class Py1002Screen extends StatefulWidget {
  const Py1002Screen({super.key});

  @override
  State<Py1002Screen> createState() => _Py1002ScreenState();
}

class _Py1002ScreenState extends State<Py1002Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: PlgSizes.wh56,
                  decoration: const BoxDecoration(
                    color: PlgColor.white_ffffffff,
                  ),
                  child: const Text("close button 들어가는 곳"),
                ),
                Wrap(
                  //Image 팔라고
                  children: [
                    Image.asset(
                      'assets/images/logo_palrago.png',
                    ),
                  ],
                ),
                PlgMargins.v8,
                const Text(
                  '팔라고 캐시/마일리지를 사용하여 충전합니다.',
                  style: PlgStyles.captionGrey_ff999999_12,
                ),
                PlgMargins.v40,
                TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    hintText: "핸드폰 번호",
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: PlgColor.black1_1a282828),
                    ),
                  ),
                ),
                PlgMargins.v20,

                TextField(
                  obscureText: true,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    hintText: "잔액조회",
                    border: const UnderlineInputBorder(
                      borderSide: BorderSide(color: PlgColor.black1_1a282828),
                    ),
                    suffixIcon: Container(
                      margin: const EdgeInsets.all(8),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          minimumSize: const Size(PlgSizes.wh70, PlgSizes.wh20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(999),
                          ),
                          side: const BorderSide(
                              width: 1, color: PlgColor.primary_ff1b9dd9),
                        ),
                        child: const Text(
                          "잔액조회",
                          style: PlgStyles.caption2Primary_ff1b9dd9_12,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
                PlgMargins.v16,
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: PlgSizes.wh10),
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/images/ic_result.png',
                          ),
                        ),
                        //PlgMargins.h10,
                        const Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '캐시잔액',
                                style: PlgStyles.captionRightBlack_ff282828_12,
                              ),
                              PlgMargins.v10,
                              Text(
                                '마일리지 잔액',
                                style: PlgStyles.captionRightBlack_ff282828_12,
                              ),
                              PlgMargins.v10,
                              Text(
                                '교환 금액',
                                style: PlgStyles.captionRightBlack_ff282828_12,
                              ),
                              PlgMargins.v10,
                            ],
                          ),
                        ),
                        PlgMargins.v10,
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '14,355 p',
                              style: PlgStyles.captionBlack2_ff282828_12,
                            ),
                            PlgMargins.v10,
                            Text(
                              '14,355 p',
                              style: PlgStyles.captionBlack2_ff282828_12,
                            ),
                            PlgMargins.v10,
                            Text(
                              '14,355 p',
                              style: PlgStyles.captionBlack2_ff282828_12,
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                PlgMargins.v20,
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: PlgSizes.wh20,
                  decoration: const BoxDecoration(
                    color: PlgColor.fill_surface85_d9f8f8f8,
                  ),
                ),
                PlgMargins.v20,
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '캐시/마일리지 사용',
                    style: PlgStyles.subtitle1Black_ff282828_16,
                    textAlign: TextAlign.left,
                  ),
                ),
                PlgMargins.v20,

                UsePointWidget(
                  label: '사용할 캐시',
                  pointLabel: 100000,
                  minPoint: 350,
                  buttonText: '전액사용',
                  onTextChanged: (text) => print('마일리지 : $text'),
                ),
                PlgMargins.v20,
                UsePointWidget(
                  label: '사용할 마일리지',
                  pointLabel: 100000,
                  minPoint: 400,
                  buttonText: '전액사용',
                  onTextChanged: (text) => print('캐시 : $text'),
                ),
                PlgMargins.v32,
                //교환하기 버튼
                FractionallySizedBox(
                  widthFactor: 1,
                  child: AnimatedContainer(
                    padding:
                        const EdgeInsets.symmetric(vertical: PlgSizes.wh16),
                    duration: const Duration(microseconds: 500),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: PlgColor.primary_ff1b9dd9,
                    ),
                    child: const Text(
                      '교환하기',
                      style: PlgStyles.subtitle1White_ffffffff_16,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                PlgMargins.v40,
                FractionallySizedBox(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: PlgColor.black15_26282828,
                    ),
                  ),
                ),

                //팔라고 캐시/마일리지 전환 안내
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 132,
                  padding: const EdgeInsets.only(
                      top: PlgSizes.wh32,
                      left: PlgSizes.wh20,
                      right: PlgSizes.wh32),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: PlgColor.fill_surface85_d9f8f8f8),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '팔라고 캐시/마일리지 전환 안내',
                        style: PlgStyles.subtitle2Black_ff282828_14,
                      ),
                      PlgMargins.v10,
                      Text(
                        '･ 결제용 비밀번호 설정 방법',
                        style: PlgStyles.captionGrey_ff999999_12,
                      ),
                      PlgMargins.v6,
                      Text(
                        "팔라고 앱 > 나의 메뉴 >  출금 및 사용처 결제용 비밀번호 \n > 출금 비밀번호 설정",
                        style: PlgStyles.captionGrey_ff999999_12,
                      ),
                    ],
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    hintText: "Search",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 1,
                        style: BorderStyle.solid,
                      ),
                    ),
                    suffixIcon: Container(
                      margin: const EdgeInsets.all(8),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(100, 50),
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                        child: const Text("Search"),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class UsePointWidget extends HookWidget {
  const UsePointWidget({
    super.key,
    required this.label,
    required this.pointLabel,
    required this.buttonText,
    required this.minPoint,
    required this.onTextChanged,
  });
  final String label;
  final int pointLabel;
  final int minPoint;
  final String buttonText;
  final void Function(String text) onTextChanged;

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    final update = useValueListenable(controller);

    useEffect(() {
      print(update.text);
      onTextChanged(update.text);
      return null;
    }, [update.text]);

    return Column(
      children: [
        Row(
          children: [
            Text(
              label,
              style: PlgStyles.subtitle3Grey_ff999999_13,
              textAlign: TextAlign.left,
            ),
            Text(
              '(사용가능 : ${pointLabel}P)',
              style: PlgStyles.subtitle3Grey_ff999999_13,
              textAlign: TextAlign.left,
            ),
          ],
        ),
        PlgMargins.v11,
        Row(
          children: [
            Expanded(
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                    hintText: '최소 ${minPoint}P',
                    hintStyle: PlgStyles.body3Grey_ff999999_13,
                    hintTextDirection: TextDirection.rtl,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    fillColor: PlgColor.black5_0d282828,
                    filled: true),
              ),
            ),
            PlgMargins.h7,
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    horizontal: PlgSizes.wh1, vertical: PlgSizes.wh1),
                fixedSize: const Size(PlgSizes.wh70, PlgSizes.wh32),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                side:
                    const BorderSide(width: 1, color: PlgColor.black1_1a282828),
              ),
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  '전액사용',
                  style: PlgStyles.captionBlack2_ff282828_12,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
