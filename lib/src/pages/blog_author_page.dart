import 'package:blog_app/src/models/blog_entry.dart';
import 'package:blog_app/src/repositories/blog_entry_repository.dart';
import 'package:blog_app/src/widgets/blog_side_bar.dart';
import 'package:flutter/material.dart';

class BlogAuthorPage extends StatefulWidget {
  const BlogAuthorPage({Key? key}) : super(key: key);

  @override
  State<BlogAuthorPage> createState() => _BlogAuthorPageState();
}

class _BlogAuthorPageState extends State<BlogAuthorPage> {
  BlogEntry? _selectedBlogPost;
  List<BlogEntry> _blogPosts = [];

  @override
  void initState() {
    _fetchBlogPosts();

    super.initState();
  }

  _fetchBlogPosts() {
    // get the blog posts from the repository, after a delay
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _blogPosts = BlogEntryRepository.blogEntries;
        // set the blog posts
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: Column(
            children: const <Widget>[
              BlogSideBar(),
              Text('Authoring page'),
            ],
          ),
        ),
        Flexible(
          flex: 3,
          fit: FlexFit.tight,
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(color: Colors.grey),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                    fit: FlexFit.tight,
                    child: SizedBox.expand(
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            right: BorderSide(color: Colors.black),
                          ),
                        ),
                        child: Column(
                          children: [
                            const Text(
                              'Blog Posts',
                              style: TextStyle(fontSize: 20),
                            ),
                            ..._blogPosts.map(
                              (post) => TextButton(
                                child: Text(post.title),
                                onPressed: () =>
                                    setState(() => _selectedBlogPost = post),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    flex: 1),
                Flexible(
                    child: SizedBox.expand(
                      child: Container(
                        decoration: const BoxDecoration(color: Colors.grey),
                        child: SingleChildScrollView(
                          child: Column(
                            children: <Widget>[
                              Text('Blog Editor',
                                  style: const TextStyle(fontSize: 20)),
                              ..._selectedBlogPost != null
                                  ? [
                                      Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Card(
                                          elevation: 16.0,
                                          margin: const EdgeInsets.all(16.0),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              children: [
                                                Text(
                                                  _selectedBlogPost!.title,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleLarge,
                                                ),
                                                Text(
                                                  _selectedBlogPost!.author,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .caption,
                                                ),
                                                Text(
                                                  _selectedBlogPost!.content,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyLarge,
                                                ),
                                                ButtonBar(
                                                  children: [
                                                    TextButton.icon(
                                                      style: ButtonStyle(
                                                        textStyle:
                                                            MaterialStateProperty
                                                                .all<TextStyle>(
                                                          const TextStyle(
                                                            color: Colors.green,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                        foregroundColor:
                                                            MaterialStateProperty
                                                                .all<Color>(
                                                                    Colors
                                                                        .green),
                                                      ),
                                                      icon: const Icon(
                                                          Icons.edit),
                                                      label: const Text('Edit'),
                                                      onPressed: () {},
                                                    ),
                                                    TextButton.icon(
                                                      style: ButtonStyle(
                                                        textStyle:
                                                            MaterialStateProperty
                                                                .all<TextStyle>(
                                                          const TextStyle(
                                                            color: Colors.red,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                        foregroundColor:
                                                            MaterialStateProperty
                                                                .all<Color>(
                                                                    Colors.red),
                                                      ),
                                                      icon: const Icon(
                                                          Icons.delete),
                                                      label:
                                                          const Text('Delete'),
                                                      onPressed: () {},
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      )
                                    ]
                                  : const [Text('Select a Post')],
                            ],
                          ),
                        ),
                      ),
                    ),
                    flex: 4),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
