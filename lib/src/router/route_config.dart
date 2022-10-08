import 'package:blog_app/src/pages/blog_list_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RouteConfig {
  static final GoRouter routeConfig = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const Material(child: BlogListPage());
        },
      ),
    ],
  );
}
