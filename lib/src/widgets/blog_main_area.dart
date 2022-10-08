import 'package:blog_app/src/models/blog_entry.dart';
import 'package:blog_app/src/widgets/blog_entry_card.dart';
import 'package:blog_app/src/widgets/blog_summary_card.dart';
import 'package:flutter/material.dart';

class BlogMainArea extends StatefulWidget {
  const BlogMainArea({Key? key}) : super(key: key);

  @override
  State<BlogMainArea> createState() => _BlogMainAreaState();
}

class _BlogMainAreaState extends State<BlogMainArea> {
  final List<BlogEntry> blogEntries = [
    BlogEntry(
      id: 1,
      title: "First blog entry",
      author: "James Robert Perih",
      content:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      publishedOn: DateTime.now(),
    ),
    BlogEntry(
      id: 2,
      title: "Second blog entry",
      author: "James Robert Perih",
      content:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      publishedOn: DateTime.now().subtract(
        const Duration(days: 2),
      ),
    ),
    BlogEntry(
      id: 3,
      title: "Third blog entry",
      author: "James Robert Perih",
      content:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      publishedOn: DateTime.now().subtract(
        const Duration(days: 24),
      ),
    ),
    BlogEntry(
      id: 4,
      title: "First blog entry",
      author: "James Robert Perih",
      content:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      publishedOn: DateTime.now(),
    ),
    BlogEntry(
      id: 5,
      title: "Second blog entry",
      author: "James Robert Perih",
      content:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      publishedOn: DateTime.now().subtract(
        const Duration(days: 2),
      ),
    ),
    BlogEntry(
      id: 6,
      title: "Third blog entry",
      author: "James Robert Perih",
      content:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      publishedOn: DateTime.now().subtract(
        const Duration(days: 24),
      ),
    ),
    BlogEntry(
      id: 7,
      title: "First blog entry",
      author: "James Robert Perih",
      content:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      publishedOn: DateTime.now(),
    ),
    BlogEntry(
      id: 8,
      title: "Second blog entry",
      author: "James Robert Perih",
      content:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      publishedOn: DateTime.now().subtract(
        const Duration(days: 2),
      ),
    ),
    BlogEntry(
      id: 9,
      title: "Third blog entry",
      author: "James Robert Perih",
      content:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      publishedOn: DateTime.now().subtract(
        const Duration(days: 24),
      ),
    ),
    BlogEntry(
      id: 10,
      title: "First blog entry",
      author: "James Robert Perih",
      content:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      publishedOn: DateTime.now(),
    ),
    BlogEntry(
      id: 11,
      title: "Second blog entry",
      author: "James Robert Perih",
      content:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      publishedOn: DateTime.now().subtract(
        const Duration(days: 2),
      ),
    ),
    BlogEntry(
      id: 12,
      title: "Third blog entry",
      author: "James Robert Perih",
      content:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      publishedOn: DateTime.now().subtract(
        const Duration(days: 24),
      ),
    ),
    BlogEntry(
      id: 13,
      title: "First blog entry",
      author: "James Robert Perih",
      content:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      publishedOn: DateTime.now(),
    ),
    BlogEntry(
      id: 14,
      title: "Second blog entry",
      author: "James Robert Perih",
      content:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      publishedOn: DateTime.now().subtract(
        const Duration(days: 2),
      ),
    ),
    BlogEntry(
      id: 15,
      title: "Third blog entry",
      author: "James Robert Perih",
      content:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      publishedOn: DateTime.now().subtract(
        const Duration(days: 24),
      ),
    ),
  ];

  BlogEntry? _selectedEntry;

  @override
  void initState() {
    _selectedEntry = blogEntries.first;
    super.initState();
  }

  void _handleSelectedBlogEntry(int blogEntryId) {
    setState(() {
      _selectedEntry = blogEntries.firstWhere((b) => b.id == blogEntryId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color(0xFF999999)),
      child: SingleChildScrollView(
        child: Column(
          children: (_selectedEntry != null)
              ? [
                  BlogEntryCard(
                      blogEntry: blogEntries
                          .firstWhere((b) => b.id == _selectedEntry!.id),
                      onBackPressed: () {
                        setState(() {
                          _selectedEntry = null;
                        });
                      }),
                ]
              : blogEntries
                  .map(
                    (b) => BlogSummaryCard(
                        blogEntrySummary: b.summary,
                        onBlogEntrySelected: _handleSelectedBlogEntry),
                  )
                  .toList(),
        ),
      ),
    );
  }
}
