import 'dart:io' show Platform;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trading_app/widgets/content.dart';
import "package:trading_app/models/navigation.dart";
import 'package:macos_ui/macos_ui.dart';

class Knowledge extends StatefulWidget {
  const Knowledge({required this.content, super.key});
  final ContentNavItem content;

  @override
  State<Knowledge> createState() => _KnowledgeState();
}

class _KnowledgeState extends State<Knowledge> {
  late ContentNavItem content = widget.content;
  late String currentContent = content.sections[0].content;

  @override
  Widget build(BuildContext context) {
    if (Platform.isMacOS) {
      return MacosScaffold(
        toolBar: ToolBar(
          centerTitle: true,
          titleWidth: 200,
          title: Text(content.label, textAlign: TextAlign.center),
          actions: [
            ToolBarPullDownButton(label: 'Chapters', icon: CupertinoIcons.list_dash, items: [
              ...content.sections.map((chapter) => MacosPulldownMenuItem(
                    label: 'Change section',
                    title: Text(chapter.label),
                    onTap: () => setState(() {
                      currentContent = chapter.content;
                    }),
                  )),
            ])
          ],
        ),
        children: [
          ContentArea(builder: (context, scroll) => Content(content: currentContent)),
        ],
      );
    } else {
      return Scaffold(
        appBar: AppBar(title: const Text("Knowledge"), centerTitle: true),
        body: Content(content: currentContent),
        endDrawer: Drawer(
          shape: Border(),
          child: ListView(children: [
            ...contentNavigation.fold([], (items, item) {
              return [
                ...items,
                Divider(height: 2),
                ListTile(title: Text(item.label, textAlign: TextAlign.center)),
                Divider(height: 2),
                ...item.sections.map((chapter) => ListTile(
                      title: Text(chapter.label),
                      onTap: () {
                        setState(() {
                          currentContent = chapter.content;
                          Navigator.pop(context);
                        });
                      },
                    ))
              ];
            })
          ]),
        ),
      );
    }
  }
}
