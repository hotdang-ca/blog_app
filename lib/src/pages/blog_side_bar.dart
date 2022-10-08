import 'package:flutter/material.dart';

class BlogSideBar extends StatelessWidget {
  const BlogSideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        Text('Blog'),
        Text('Links'),
      ],
    );
  }
}
