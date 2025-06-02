import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_night/data/models/user.dart';
import 'package:movie_night/data/repositories/auth_repo.dart';
import 'package:movie_night/utils/arch/result.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this.authRepo) : super(SignUpInitial());

  final AuthRepo authRepo;

  register(String email, String password) async {
    emit(SignUpLoading());

    try {
      // call auth repo
      final result = await authRepo.registerWithEmail(email, password);

      if (result is Ok<UserModel>) {
        // Emit success state with user data
        emit(SignUpSuccess(result.value));
      } else if (result is Error) {
        // Emit failure state with error message
        emit(SignUpFailure(result.error.toString()));
      }
    } catch (e) {
      emit(SignUpFailure('Registration failed: ${e.toString()}'));
    }
  }
}
