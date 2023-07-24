import 'package:uuid/uuid.dart';

class User {
  late String id;
  final String firstName;
  final String lastName;
  final String email;

  User({
    String? id,
    required this.firstName,
    required this.lastName,
    required this.email,
  }) {
    this.id = id ?? const Uuid().v4();
  }

  String get fullName => '$firstName $lastName';
  String get initials => firstName[0].toUpperCase() + lastName[0].toUpperCase();

  List<String> namesFromFullName() {
    final splitted = fullName.split(' ');
    return [splitted.first, splitted.skip(1).join(' ')];
  }

  User copyWith({
    String? firstName,
    String? lastName,
  }) {
    return User(
      id: id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email,
    );
  }
}
