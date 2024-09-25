import 'user_model.dart';

List<UserModel> users = [
  UserModel(firstName: "Lukas", lastName: "Buck", age: 19, isStudent: true),
  UserModel(firstName: "David", lastName: "Sent", age: 27, isStudent: false),
  UserModel(firstName: "Kai", lastName: "Hatje", age: 35, isStudent: false),
  UserModel(firstName: "Sobhi", lastName: "Hammound", age: 25, isStudent: true),
  UserModel(firstName: "Tabea", lastName: "Gnade", age: 25, isStudent: true),
];

/// Gibt die Vornamen aller Benutzer zurück
List<String> getUserFirstNames() => users.map((e) => e.firstName).toList();

/// Gibt die Nachnamen aller Benutzer zurück
List<String> getUserLastNames() => users.map((e) => e.lastName).toList();

/// Gibt das Alter aller Benutzer zurück
List<int> getUserAges() => users.map((e) => e.age).toList();

/// Gibt die Studenteninformationen aller Benutzer zurück
List<bool> getUserStudentStatus() => users.map((e) => e.isStudent).toList();

/// Gibt die Vornamen der Benutzer zurück, die älter als 25 sind
List<String> getUserFirstNamesOlderThan25() =>
    users.where((user) => user.age > 25).map((user) => user.firstName).toList();

/// Gibt die vollständigen Namen der Benutzer zurück, die Studenten sind
List<String> getFullNamesOfStudentUsers() => users
    .where((user) => user.isStudent)
    .map((user) => "${user.firstName} ${user.lastName}")
    .toList();

/// Gibt das Alter der Benutzer zurück, die Studenten sind
List<int> getAgesOfStudentUsers() =>
    users.where((user) => user.isStudent).map((user) => user.age).toList();

void main() {
  print(getUserFirstNames());
  print(getUserLastNames());
  print(getUserAges());
  print(getUserStudentStatus());
  print(getUserFirstNamesOlderThan25());
  print(getFullNamesOfStudentUsers());
  print(getAgesOfStudentUsers());
}
