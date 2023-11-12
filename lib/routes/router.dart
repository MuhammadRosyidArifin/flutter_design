import 'package:go_router/go_router.dart';

import '../design1/home_page.dart';
import '../design2/home_design2.dart';
import '../design3/home_design3.dart';
import '../design3/starter_design3.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
      routes: [
        GoRoute(
          path: 'design2',
          builder: (context, state) => const HomeDesign2(),
        ),
        GoRoute(
          path: 'design3',
          builder: (context, state) => const StarterDesign3(),
          routes: [
            GoRoute(
              path: 'home',
              builder: (context, state) => const HomeDesign3(),
            ),
          ],
        ),
      ],
    ),
  ],
);
