import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../core/theme/constant/app_icons.dart';
import '../../routes/route_path.dart';


// TODO 로그인 bloc
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
    // go : 스택에 쌓이지 않음
    // push : 스택에 쌓임
    Timer(Duration(seconds:2), () => context.go(RoutePath.main));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: SvgPicture.asset(AppIcons.mainLogo),
      )
    );
  }
}
