import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quransinar/page/dashboard.dart';
import 'package:quransinar/page/ayat.dart';
import 'package:quransinar/page/detail_ayat.dart';
import 'package:quransinar/page/search_ayat.dart';

GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const DashboardPage();
      },
      routes: <RouteBase>[
        GoRoute(
            name: 'ayat',
            path: 'ayat',
            builder: (BuildContext context, GoRouterState state) {
              return const AyatPage();
            },
            routes: <RouteBase>[
              GoRoute(
                name: 'detailayat',
                path: 'detailayat',
                builder: (BuildContext context, GoRouterState state) {
                  return DetailAyat(
                    idayat: state.uri.queryParameters['idayat']!,
                  );
                },
              ),
              GoRoute(
                  name: 'searchayat',
                  path: 'searchayat',
                  builder: (BuildContext context, GoRouterState state) {
                    return const SearchAyatPage();
                  },
                  routes: const <RouteBase>[]),
            ]),
      ],
    ),
  ],
);
