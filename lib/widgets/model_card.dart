import 'package:flutter/material.dart';
import 'package:trading_app/models/model.dart';

class ModelCard extends StatelessWidget {
  const ModelCard(this.model, {super.key});

  final Model model;

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
        child: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            model.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          ...model.steps.map((step) => Text(step))
        ],
      ),
    ));
  }
}
