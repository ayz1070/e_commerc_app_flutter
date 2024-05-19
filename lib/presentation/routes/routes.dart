import 'package:e_commerce_app/presentation/routes/route_path.dart';
import 'package:go_router/go_router.dart';

import '../main/main_screen.dart';
import '../pages/splash/splash_page.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: RoutePath.splash,
      name: 'splash',
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: RoutePath.main,
      name: 'main',
      builder: (context, state) => const MainScreen(),
    ),
  ],
  initialLocation: '/splash',
);
