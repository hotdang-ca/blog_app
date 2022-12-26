import 'package:blog_app/src/models/blog_entry.dart';
import 'package:blog_app/src/repositories/blog_entry_repository.dart';
import 'package:blog_app/src/widgets/blog_entry_card.dart';
import 'package:blog_app/src/widgets/blog_summary_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BlogMainArea extends StatefulWidget {
  const BlogMainArea({Key? key}) : super(key: key);

  @override
  State<BlogMainArea> createState() => _BlogMainAreaState();
}

class _BlogMainAreaState extends State<BlogMainArea> {
  @override
  void initState() {
    super.initState();
  }

  Future<List<BlogEntry>> _fetchBlogEntries() async {
    await Future.delayed(const Duration(seconds: 5));
    return BlogEntryRepository.blogEntries;
  }

  void _handleSelectedBlogEntry({
    required int blogEntryId,
    required BuildContext context,
  }) {
    final selectedBlogEntry =
        BlogEntryRepository.blogEntries.firstWhere((b) => b.id == blogEntryId);
    context.goNamed(
      'blogReader',
      params: {'slug': selectedBlogEntry.slug},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration:
          const BoxDecoration(color: Color.fromARGB(255, 223, 223, 223)),
      child: FutureBuilder(
        future: _fetchBlogEntries(),
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            final blogEntries = snapshot.data as List<BlogEntry>;

            return SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: blogEntries.isEmpty
                    ? <Widget>[
                        Center(
                          child: Text(
                            'No blog entries found',
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                        ),
                      ]
                    : (snapshot.data as List)
                        .map(
                          (b) => BlogSummaryCard(
                            blogEntrySummary: b.summary,
                            onBlogEntrySelected: (int blogEntryId) =>
                                _handleSelectedBlogEntry(
                              blogEntryId: blogEntryId,
                              context: context,
                            ),
                          ),
                        )
                        .toList(),
              ),
            );
          }

          return SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Center(child: Text('pls wait...')),
                CircularProgressIndicator(),
              ],
            ),
          );
        }),
      ),
    );
  }
}
