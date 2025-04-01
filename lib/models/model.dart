import 'package:json_annotation/json_annotation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'model.g.dart';

@JsonSerializable()
class Model {
  final String name;
  final List<String> steps;

  const Model({required this.name, required this.steps});

  factory Model.fromRecord(RecordModel record) => Model.fromJson(record.toJson());

  factory Model.fromJson(Map<String, dynamic> json) => _$ModelFromJson(json);

  Map<String, dynamic> toJson() => _$ModelToJson(this);
}
