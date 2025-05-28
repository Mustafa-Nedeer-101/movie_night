import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;

class UserModel {
  final String uid;
  final String? email;

  const UserModel({required this.uid, this.email});

  factory UserModel.fromFirebaseUser(firebase_auth.User user) {
    return UserModel(
      uid: user.uid,
      email: user.email,
    );
  }

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      uid: json['uid'] as String,
      email: json['email'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'email': email,
    };
  }
}
