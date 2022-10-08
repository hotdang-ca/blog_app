import 'package:blog_app/src/widgets/blog_main_area.dart';
import 'package:blog_app/src/widgets/blog_side_bar.dart';
import 'package:flutter/material.dart';

class BlogListPage extends StatefulWidget {
  const BlogListPage({Key? key}) : super(key: key);

  @override
  State<BlogListPage> createState() => _BlogListPageState();
}

class _BlogListPageState extends State<BlogListPage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        const Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: BlogSideBar(),
        ),
        Flexible(
          flex: 3,
          fit: FlexFit.tight,
          child: BlogMainArea(),
        ),
      ],
    );
  }
}
