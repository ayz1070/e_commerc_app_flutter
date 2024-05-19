import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theme/constant/app_icons.dart';
import '../../cubit/bottom_nav_cubit.dart';

class DefaultAppBar extends StatelessWidget {
  const DefaultAppBar(this.bottomNav, {super.key});

  final BottomNav bottomNav;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primary,
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
      child: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          bottomNav.toName,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white),
        ),
      ),
    );
  }
}
