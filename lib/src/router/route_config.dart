import 'package:blog_app/src/pages/blog_author_page.dart';
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
            name: 'blogAuthor',
            path: 'author',
            builder: (BuildContext context, GoRouterState state) {
              return const Material(child: BlogAuthorPage());
            },
          ),
          GoRoute(
            name: 'blogReader',
            path: 'blog/:slug',
            builder: (BuildContext context, GoRouterState state) {
              if (!state.params.containsKey('slug')) {
                return const Material(child: BlogListPage());
              }

              final String slugText = state.params['slug']!;

              // pass in the slug, regardless if it exists or not.
              // Let the blog reader view handle the error.
              return Material(
                child: BlogReaderView(
                  slug: slugText,
                ),
              );
            },
          ),
        ],
      )
    ],
  );
}
