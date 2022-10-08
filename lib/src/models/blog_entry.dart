import 'dart:math';

class BlogEntry {
  late final int id;
  late final String title;
  late final String content;
  late final String author;
  late final DateTime publishedOn;

  BlogEntry({
    required this.id,
    required this.title,
    required this.content,
    required this.author,
    required this.publishedOn,
  });

  BlogEntrySummary get summary => BlogEntrySummary(
        id: id,
        author: author,
        content: content,
        title: title,
        publishedOn: publishedOn,
      );
}

class BlogEntrySummary extends BlogEntry {
  BlogEntrySummary({
    required id,
    required title,
    required content,
    required author,
    required publishedOn,
  }) : super(
            id: id,
            title: title,
            content: content,
            author: author,
            publishedOn: publishedOn);

  String get summaryText => content.substring(0, min(140, content.length));
}
