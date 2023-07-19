import 'package:uuid/uuid.dart';

class Ingredient {
  late String id;
  final String? name;
  final String? description;

  String get title => name ?? description!;

  Ingredient({
    this.name,
    this.description,
  }) {
    assert(name != null || description != null);
    id = const Uuid().v4();
  }
}
