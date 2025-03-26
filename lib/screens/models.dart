import 'package:flutter/material.dart';
import 'package:trading_app/models/model.dart';

class Models extends StatelessWidget {
  const Models({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [...models.map((model) => Text(model.name))],
    );
  }
}
