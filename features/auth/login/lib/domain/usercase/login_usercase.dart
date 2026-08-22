import 'package:dartz/dartz.dart';
import 'package:domain/model/failure.dart';
import 'package:domain/usercase/base_usercase.dart';
import 'package:login/data/request/login_request.dart';
import 'package:login/domain/model/login_model.dart';
import 'package:login/domain/repository/login_repository.dart';

class LoginUserCase implements BaseUserCase<LoginRequest, LoginModel> {
  final LoginRepository loginRepository;

  LoginUserCase(this.loginRepository);

  @override
  Future<Either<Failure, LoginModel>> execute(LoginRequest input) async {
    return loginRepository.login(input);
  }
}
