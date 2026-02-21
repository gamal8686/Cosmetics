


class User {
  late final String token;
  late final UserModel? user;

  User.fromJson(Map<String, dynamic> json) {
    token = json['token'] ?? '';

    user = json['user'] != null && json['user'] is Map
        ? UserModel.fromJson(json['user'])
        : null;
  }
}

class UserModel {
  late final int id;
  late final String username;
  late final String email;
  late final String phoneNumber;
  late final String countryCode;
  late final String role;
  late final String profilePhotoUrl;

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? 0;
    username = json['username'] ?? '';
    email = json['email'] ?? '';
    phoneNumber = json['phoneNumber'] ?? '';
    countryCode = json['countryCode'] ?? '';
    role = json['role'] ?? '';
    profilePhotoUrl = json['profilePhotoUrl'] ?? '';
  }
}
