import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quransinar/page/dashboard.dart';
import 'package:quransinar/page/ayat.dart';

GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return DashboardPage();
      },
      routes: <RouteBase>[
        GoRoute(
          name: 'ayat',
          path: 'ayat',
          builder: (BuildContext context, GoRouterState state) {
            return AyatPage();
          },
        ),
      ],
    ),
  ],
);
