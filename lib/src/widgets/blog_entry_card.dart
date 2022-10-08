import 'package:blog_app/src/models/blog_entry.dart';
import 'package:flutter/material.dart';

class BlogEntryCard extends StatelessWidget {
  final BlogEntry blogEntry;
  final Function onBackPressed;

  const BlogEntryCard(
      {required this.blogEntry, required this.onBackPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Card(
        margin: const EdgeInsets.all(28.0),
        elevation: 16.0,
        child: Flexible(
          flex: 1,
          fit: FlexFit.loose,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  blogEntry.title,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(blogEntry.author,
                            style: Theme.of(context).textTheme.caption),
                        Text(blogEntry.publishedOn.toIso8601String(),
                            style: Theme.of(context).textTheme.caption),
                      ]),
                ),
                Text(blogEntry.content,
                    style: Theme.of(context).textTheme.bodyLarge),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                      onPressed: (() {
                        onBackPressed();
                      }),
                      child: const Text('Go Back')),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
