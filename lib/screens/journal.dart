import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';

class Journal extends StatelessWidget {
  const Journal({super.key});

  @override
  Widget build(BuildContext context) {
    if (Platform.isMacOS) {
      return MacosScaffold(
        toolBar: ToolBar(
          centerTitle: true,
          title: Text("Journal", textAlign: TextAlign.center),
        ),
        children: [
          ContentArea(builder: (context, scroll) {
            return const Placeholder();
          })
        ],
      );
    } else {
      return const Placeholder();
    }
  }
}
