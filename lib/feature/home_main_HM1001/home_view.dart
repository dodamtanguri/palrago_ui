import 'package:flutter/material.dart';
import 'package:palrago_ui/feature/home_main_HM1001/widgets/home_app_bar_widget.dart';
import 'package:palrago_ui/feature/home_main_HM1001/widgets/home_notification_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBarWidget(point: '14000'),
      body: HomeNotificationWidget(),
    );
  }
}
