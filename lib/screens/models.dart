import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';

class Models extends StatelessWidget {
  const Models({super.key});

  @override
  Widget build(BuildContext context) {
    if (Platform.isMacOS) {
      return MacosScaffold(
        toolBar: ToolBar(
          centerTitle: true,
          title: Text("Models", textAlign: TextAlign.center),
        ),
        children: [
          ContentArea(builder: (context, scroll) => const Placeholder()),
        ],
      );
    } else {
      return const Placeholder();
    }
  }
}
