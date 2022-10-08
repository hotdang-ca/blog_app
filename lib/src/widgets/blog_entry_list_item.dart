import 'package:blog_app/src/models/blog_entry.dart';
import 'package:flutter/material.dart';

class BlogEntryListItem extends StatelessWidget {
  final BlogEntrySummary blogEntrySummary;

  const BlogEntryListItem({Key? key, required this.blogEntrySummary})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(blogEntrySummary.title),
        Text(blogEntrySummary.summaryText),
      ],
    );
  }
}
