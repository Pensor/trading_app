import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:url_launcher/url_launcher.dart';

class Content extends StatelessWidget {
  const Content({required this.content, this.scroll, super.key});

  final String content;
  final ScrollController? scroll;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 1000),
        child: FutureBuilder(
            future: DefaultAssetBundle.of(context).loadString(content),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return SingleChildScrollView(
                  padding: EdgeInsets.all(20.0),
                  child: MarkdownBody(
                    data: snapshot.data!,
                    styleSheet: MarkdownStyleSheet(textScaler: TextScaler.linear(1.2)),
                    onTapLink: (text, href, title) => launchUrl(Uri.parse(href!)),
                  ),
                );
              }
              return Center(child: const CircularProgressIndicator());
            }),
      ),
    );
  }
}
