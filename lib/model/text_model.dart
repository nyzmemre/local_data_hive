import 'package:hive/hive.dart';

part 'text_model.g.dart';

@HiveType(typeId: 0)
class TextModel {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String description;

  TextModel(this.title, this.description);
}
