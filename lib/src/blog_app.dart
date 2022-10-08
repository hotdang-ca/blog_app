import 'package:blog_app/src/router/route_config.dart';
import 'package:flutter/material.dart';

class BlogApp extends StatelessWidget {
  const BlogApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: RouteConfig.routeConfig,
      title: 'GoRouter Example',
    );
  }
}
