class User {
  final String id;
  final String firstName;
  final String lastName;
  final String email;

  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
  });

  String get fullName => '$firstName $lastName';
  String get initials => firstName[0].toUpperCase() + lastName[0].toUpperCase();
}
