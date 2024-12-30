import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class Chapter {
  final String label;
  final String content;

  const Chapter({required this.label, required this.content});
}

List<Chapter> chapters = [
  Chapter(label: "Chapter 1", content: "assets/content/chapter-1.md"),
  Chapter(label: "Chapter 2", content: "assets/content/chapter-2.md"),
  Chapter(label: "Chapter 3", content: "assets/content/chapter-3.md"),
  Chapter(label: "Chapter 4", content: "assets/content/chapter-4.md"),
  Chapter(label: "Chapter 5", content: "assets/content/chapter-5.md"),
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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Wissen"),
          backgroundColor: Colors.cyan[900],
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 1000),
            child: FutureBuilder(
                future: DefaultAssetBundle.of(context).loadString(currentContent),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Markdown(
                      data: snapshot.data!,
                      styleSheet: MarkdownStyleSheet(textScaler: TextScaler.linear(1.2)),
                    );
                  }
                  return Center(child: const CircularProgressIndicator());
                }),
          ),
        ),
        endDrawer: SafeArea(
            child: Drawer(
                shape: Border(),
                child: ListView(children: [
                  DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.cyan[900],
                    ),
                    child: const Text(
                      'Decoding the Algorithm',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ...chapters.map((chapter) => ListTile(
                        title: Text(chapter.label),
                        onTap: () {
                          setState(() {
                            currentContent = chapter.content;
                            Navigator.pop(context);
                          });
                        },
                      )),
                ]))),
      ),
    );
  }
}
