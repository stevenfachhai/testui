import 'package:dartz/dartz.dart';
import 'package:ohkarao/core/usecase/usecase.dart';
import 'package:ohkarao/data/models/auth/signin_user_req.dart';
import 'package:ohkarao/domain/repository/auth/auth.dart';
import 'package:ohkarao/service_locator.dart';

class SigninUseCase implements Usecase<Either, SigninUserReq> {
  @override
  Future<Either> call({SigninUserReq? params}) async {
    return sl<AuthRepository>().signin(params!);
  }
}
