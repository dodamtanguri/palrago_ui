import 'package:flutter/material.dart';
import 'package:palrago_ui/feature/market/market_view.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  pushPage(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () {
                  pushPage(context, const MarketView(categories: [], marketProductList: [],));
                },
                child: const Text('팔라고 장터'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
