import 'package:flutter/material.dart';

class BlogMainArea extends StatelessWidget {
  const BlogMainArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color(0xFF999999)),
      child: Column(
        children: const <Widget>[
          Text('Main area'),
        ],
      ),
    );
  }
}
