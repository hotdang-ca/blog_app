import 'package:blog_app/src/pages/blog_list_page.dart';
import 'package:blog_app/src/widgets/blog_reader_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RouteConfig {
  static final GoRouter routeConfig = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        name: 'blogList',
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const Material(child: BlogListPage());
        },
        routes: <GoRoute>[
          GoRoute(
            name: 'blogReader',
            path: 'blog/:id',
            builder: (BuildContext context, GoRouterState state) {
              print('GoRouterState: $state');
              return const Material(child: BlogReaderView());
            },
          ),
        ],
      )
    ],
  );
}
