import 'package:flutter/material.dart';
import 'package:flutter_4/screens/home_screen.dart';

import 'home_banner.dart';
import 'icon_info.dart';
import 'project.dart';
import 'recommendations.dart';

class MainSection extends StatelessWidget {
  const MainSection({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeScreen(
      mainSection: SingleChildScrollView(
        child: Column(
          children: const [
             HomeBanner(),
             IconInfo(),
             Project(),
             Recommendations(),
          ],
        ),
      ),
    );
  }
}