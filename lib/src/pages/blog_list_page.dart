import 'package:flutter/material.dart';

class BlogListPage extends StatefulWidget {
  const BlogListPage({Key? key}) : super(key: key);

  @override
  State<BlogListPage> createState() => _BlogListPageState();
}

class _BlogListPageState extends State<BlogListPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Hello Blog List Page',
      ),
    );
  }
}
