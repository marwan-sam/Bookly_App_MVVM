import 'package:flutter/material.dart';

import 'app_bar.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HomeAppBar(),
      ],
    );
  }
}
