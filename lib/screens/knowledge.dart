import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:url_launcher/url_launcher.dart';

class Chapter {
  final String label;
  final String content;

  const Chapter({required this.label, required this.content});
}

List<Chapter> chapters = [
  Chapter(label: "Chapter 1", content: "assets/content/algorithm/chapter-1.md"),
  Chapter(label: "Chapter 2", content: "assets/content/algorithm/chapter-2.md"),
  Chapter(label: "Chapter 3", content: "assets/content/algorithm/chapter-3.md"),
  Chapter(label: "Chapter 4", content: "assets/content/algorithm/chapter-4.md"),
  Chapter(label: "Chapter 5", content: "assets/content/algorithm/chapter-5.md"),
];

List<Chapter> fractalSections = [
  Chapter(
    label: "Section 1: Concepts",
    content: "assets/content/fractal-model/section-1.md",
  ),
  Chapter(
    label: "Section 2: Swing Highs & Lows",
    content: "assets/content/fractal-model/section-2.md",
  ),
  Chapter(
    label: "Section 3: Swing Framework",
    content: "assets/content/fractal-model/section-3.md",
  ),
  Chapter(
    label: "Section 4: TTrades Fractal Model",
    content: "assets/content/fractal-model/section-4.md",
  ),
];

List<Chapter> gxtSections = [
  Chapter(
    label: "Section 1: Logic",
    content: "assets/content/gxt-model/section-1.md",
  ),
  Chapter(
    label: "Section 2: Profiling",
    content: "assets/content/gxt-model/section-2.md",
  ),
  Chapter(
    label: "Section 3: Entries",
    content: "assets/content/gxt-model/section-3.md",
  ),
];

class Knowledge extends StatefulWidget {
  const Knowledge({super.key});

  @override
  State<Knowledge> createState() => _KnowledgeState();
}

class _KnowledgeState extends State<Knowledge> {
  String currentContent = chapters[0].content;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Knowledge"), centerTitle: true),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 1000),
          child: FutureBuilder(
              future: DefaultAssetBundle.of(context).loadString(currentContent),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return SafeArea(
                    child: Markdown(
                      data: snapshot.data!,
                      styleSheet: MarkdownStyleSheet(textScaler: TextScaler.linear(1.2)),
                      onTapLink: (text, href, title) => launchUrl(Uri.parse(href!)),
                    ),
                  );
                }
                return Center(child: const CircularProgressIndicator());
              }),
        ),
      ),
      endDrawer: Drawer(
        shape: Border(),
        child: ListView(children: [
          ListTile(
            title: Text(
              'Decoding the Algorithm',
              textAlign: TextAlign.center,
            ),
          ),
          Divider(height: 2),
          ...chapters.map((chapter) => ListTile(
                title: Text(chapter.label),
                onTap: () {
                  setState(() {
                    currentContent = chapter.content;
                    Navigator.pop(context);
                  });
                },
              )),
          Divider(height: 2),
          ListTile(
            title: Text(
              'Fractal Model',
              textAlign: TextAlign.center,
            ),
          ),
          Divider(height: 2),
          ...fractalSections.map((chapter) => ListTile(
                title: Text(chapter.label),
                onTap: () {
                  setState(() {
                    currentContent = chapter.content;
                    Navigator.pop(context);
                  });
                },
              )),
          Divider(height: 2),
          ListTile(
            title: Text(
              'GxT Model',
              textAlign: TextAlign.center,
            ),
          ),
          Divider(height: 2),
          ...gxtSections.map((chapter) => ListTile(
                title: Text(chapter.label),
                onTap: () {
                  setState(() {
                    currentContent = chapter.content;
                    Navigator.pop(context);
                  });
                },
              )),
        ]),
      ),
    );
  }
}
