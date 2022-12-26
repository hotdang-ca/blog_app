import 'package:blog_app/src/models/blog_entry.dart';
import 'package:blog_app/src/repositories/blog_entry_repository.dart';
import 'package:blog_app/src/widgets/blog_entry_card.dart';
import 'package:blog_app/src/widgets/blog_side_bar.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

class BlogReaderPage extends StatelessWidget {
  final String slug;

  const BlogReaderPage({required this.slug, Key? key}) : super(key: key);

  Future<BlogEntry> _getBlogEntryWithSlug(String slug) async {
    await Future.delayed(const Duration(seconds: 1));

    BlogEntry? blogEntryWithSlug =
        BlogEntryRepository.blogEntries.firstWhereOrNull(
      (b) => b.slug == slug,
    );

    if (blogEntryWithSlug == null) {
      throw Exception('Blog entry with slug $slug not found');
    }

    return blogEntryWithSlug;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: BlogSideBar(),
        ),
        Flexible(
          flex: 3,
          fit: FlexFit.tight,
          child: Container(
            decoration:
                const BoxDecoration(color: Color.fromARGB(255, 223, 223, 223)),
            child: FutureBuilder(
              future: _getBlogEntryWithSlug(slug),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return BlogEntryCard(
                    blogEntry: snapshot.data as BlogEntry,
                    onBackPressed: () {
                      Navigator.of(context).pop();
                    },
                  );
                } else if (snapshot.hasError) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(
                          flex: 2,
                        ),
                        Text(
                          '404\nBlog Entry not found',
                          textAlign: TextAlign.center,
                          style:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    fontSize: 96.0,
                                  ),
                        ),
                        const Spacer(
                          flex: 2,
                        ),
                        const Text(
                            'These things happen... I wouldn\'t worry too much.'),
                        const Text('But if you do, you can always go back.'),
                        const SizedBox(
                          height: 24,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('Go back'),
                        ),
                        const Spacer(
                          flex: 2,
                        ),
                      ],
                    ),
                  );
                } else {
                  return const Center(child: Text('pls wait...'));
                }
              },
            ),
          ),
        ),
      ],
    );
  }
}
