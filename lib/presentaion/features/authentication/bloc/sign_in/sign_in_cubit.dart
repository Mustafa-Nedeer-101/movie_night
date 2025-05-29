import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_night/data/models/user.dart';
import 'package:movie_night/data/repositories/auth_repo.dart';
import 'package:movie_night/utils/arch/result.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit(this.authRepo) : super(SignInInitial());

  // Auth Repo
  final AuthRepo authRepo;

  signin(String email, String password) async {
    emit(SignInLoading());

    try {
      // call auth repo
      final result = await authRepo.signInWithEmail(email, password);

      if (result is Ok<UserModel>) {
        // Emit success state with user data
        emit(SignInSuccess(result.value));
      } else if (result is Error) {
        // Emit failure state with error message
        emit(SignInFailure(result.error.toString()));
      }
    } catch (e) {
      emit(SignInFailure('Sign-in failed: ${e.toString()}'));
    }
  }

  signOut() async {
    try {
      final result = await authRepo.signOut();

      if (result is Ok) {
        // Emit success state
        emit(SignInInitial());
      } else if (result is Error) {
        // Emit failure state with error message
        emit(SignInFailure(result.error.toString()));
      }
    } catch (e) {
      emit(SignInFailure('Sign-out failed: ${e.toString()}'));
    }
  }
}
