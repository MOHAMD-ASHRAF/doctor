

import 'package:doctor/feature/login/data/models/login_request_body.dart';
import 'package:doctor/feature/login/data/repo/login_repo.dart';
import 'package:doctor/feature/login/logic/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  void emitLoginState(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loading());
    final response  = await _loginRepo.login(loginRequestBody);
    response.when(success: (loginResponse){
      emit(LoginState.success(loginResponse));

    }, failure: (error){
      emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}
