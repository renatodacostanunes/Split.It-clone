import 'package:google_sign_in/google_sign_in.dart';

class UserModel {
  UserModel({
    this.name,
    required this.email,
    required this.id,
    this.photoUrl,
  });

  final String? name;
  final String email;
  final String id;
  final String? photoUrl;

  factory UserModel.google(GoogleSignInAccount account) {
    return UserModel(
        name: account.displayName,
        email: account.email,
        id: account.id,
        photoUrl: account.photoUrl);
  }
}
