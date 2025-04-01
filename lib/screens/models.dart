import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trading_app/providers/models_provider.dart';
import 'package:trading_app/widgets/model_card.dart';

class Models extends ConsumerWidget {
  const Models({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final models = ref.watch(modelsProvider);

    if (Platform.isMacOS) {
      return MacosScaffold(
        toolBar: ToolBar(
          centerTitle: true,
          title: Text("Models", textAlign: TextAlign.center),
        ),
        children: [
          ContentArea(builder: (context, scroll) {
            return models.when(
              data: (models) => ListView(
                padding: const EdgeInsets.all(16),
                children: [...models.map((model) => ModelCard(model))],
              ),
              error: (error, stack) => Center(child: Text('$error', textAlign: TextAlign.center)),
              loading: () => Center(child: const ProgressCircle(radius: 20)),
            );
          }),
        ],
      );
    } else {
      return const Placeholder();
    }
  }
}
