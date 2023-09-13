import 'package:flutter/material.dart';
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
                  // hintText: "핸드폰 번호",
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: PlgColor.black1_1a282828),
                  ),
                ),
              ),
              PlgMargins.v20,
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    // hintText: "비밀번호",
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: PlgColor.black1_1a282828),
                    ),
                    suffixIcon: Container(
                      margin: const EdgeInsets.all(8.0),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(999),
                          ),
                          side: const BorderSide(
                              width: 1, color: PlgColor.primary_ff1b9dd9),
                        ),
                        onPressed: () {},
                        child: const Text(
                          '잔액조회',
                          style: PlgStyles.caption2Primary_ff1b9dd9_12,
                        ),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
