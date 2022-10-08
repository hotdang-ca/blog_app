import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class BlogSideBar extends StatelessWidget {
  const BlogSideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        BlogTitle(),
        BlogAttribution(),
      ],
    );
  }
}

class BlogAttribution extends StatelessWidget {
  const BlogAttribution({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'A blog by James Robert Perih',
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      fontSize: 14.0,
                    ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: InkWell(
                child: Text(
                  'Email',
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        fontSize: 14.0,
                      ),
                ),
                onTap: () => launchUrlString('mailto:james@hotdang.ca'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: InkWell(
                child: Text(
                  'LinkedIn',
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        fontSize: 14.0,
                      ),
                ),
                onTap: () => launchUrl(
                    Uri.https('linkedin.com', '/in/jamesrobertperih')),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BlogTitle extends StatelessWidget {
  const BlogTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(
            'Zen and the Art of Tetris',
            style: Theme.of(context).textTheme.headline1!.copyWith(
                  fontSize: 48.0,
                ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              'Philosophy, Tetris, Software Development, and Management',
              style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 18.0,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
