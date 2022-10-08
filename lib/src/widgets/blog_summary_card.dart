import 'package:blog_app/src/models/blog_entry.dart';
import 'package:flutter/material.dart';

class BlogSummaryCard extends StatelessWidget {
  final BlogEntrySummary blogEntrySummary;
  final Function onBlogEntrySelected;

  const BlogSummaryCard(
      {required this.blogEntrySummary,
      required this.onBlogEntrySelected,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Card(
        elevation: 8.0,
        margin: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    blogEntrySummary.title,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        blogEntrySummary.author,
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        '${DateTime.now().difference(blogEntrySummary.publishedOn).inDays} days ago',
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '${blogEntrySummary.summaryText}...',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            TextButton(
              onPressed: (() {
                debugPrint(
                    'Navigator push for blog titled ${blogEntrySummary.title}');
                onBlogEntrySelected(blogEntrySummary.id);
              }),
              child: const Text('Read more →'),
            )
          ],
        ),
      ),
    );
  }
}
