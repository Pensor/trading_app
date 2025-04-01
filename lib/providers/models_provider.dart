import 'package:pocketbase/pocketbase.dart';
import 'package:trading_app/models/model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

part 'models_provider.g.dart';

final pb = PocketBase(dotenv.env['POCKETBASE_URL']!);

@riverpod
Future<List<Model>> models(Ref ref) async {
  await pb
      .collection('_superusers')
      .authWithPassword(dotenv.env['POCKETBASE_USER']!, dotenv.env['POCKETBASE_PASSWORD']!);

  final records = await pb.collection('models').getFullList();

  final models = records.map(Model.fromRecord).toList();

  return models;
}
