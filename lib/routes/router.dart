import 'package:go_router/go_router.dart';

import '../design1/home_page.dart';
import '../design2/home_design2.dart';

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
      ],
    ),
  ],
);
