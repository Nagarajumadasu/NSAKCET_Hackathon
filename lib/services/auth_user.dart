import 'package:firebase_auth/firebase_auth.dart' show User;
import 'package:flutter/widgets.dart';

@immutable
class AuthUser {
  final String id;
  final String email;
  final bool isEmailVerified;
  const AuthUser({
    required this.id,
    required this.email,
    required this.isEmailVerified,
  });

  factory AuthUser.fromfirbase(User user) => AuthUser(
        isEmailVerified: user.emailVerified,
        email: user.email!,
        id: user.uid,
      );
}