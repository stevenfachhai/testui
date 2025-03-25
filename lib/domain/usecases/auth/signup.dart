import 'package:dartz/dartz.dart';
import 'package:ohkarao/core/usecase/usecase.dart';
import 'package:ohkarao/data/models/auth/create_user.dart';
import 'package:ohkarao/domain/repository/auth/auth.dart';
import 'package:ohkarao/service_locator.dart';

class SignupUseCase implements Usecase<Either, CreateUserReq> {
  @override
  Future<Either> call({CreateUserReq? params}) async {
    return sl<AuthRepository>().signup(params!);
  }
}
