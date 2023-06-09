import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/bottom_bar_floating.dart';
import 'package:flutter/material.dart';

import 'widget/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: BottomBarFloat(
        items: itemsOfBottomBar,
        currentIndex: currentIndex,
      ),
      body: const SafeArea(
        child: HomeScreenBody(),
      ),
    );
  }
}
