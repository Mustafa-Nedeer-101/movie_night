import 'package:movie_night/data/services/firebase/firebase_auth_service.dart';
import 'package:movie_night/utils/arch/result.dart';

class AuthRepo {
  final FirebaseAuthService firebaseAuthService;

  AuthRepo({required this.firebaseAuthService});

  Future<Result> signInWithEmail(String email, String password) async {
    try {
      final user = await firebaseAuthService.signInWithEmail(email, password);
      if (user != null) {
        return Result.ok(user);
      } else {
        return Result.error(Exception('Sign in failed'));
      }
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  Future<Result> registerWithEmail(String email, String password) async {
    try {
      final user = await firebaseAuthService.registerWithEmail(email, password);
      if (user != null) {
        return Result.ok(user);
      } else {
        return Result.error(Exception('Registration failed'));
      }
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  Future<Result> signOut() async {
    try {
      await firebaseAuthService.signOut();
      return Result.ok(null);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  Stream<Result> authStateChanges() {
    return firebaseAuthService.authStateChanges().map((user) {
      if (user != null) {
        return Result.ok(user);
      } else {
        return Result.error(Exception('User is not authenticated'));
      }
    });
  }
}
