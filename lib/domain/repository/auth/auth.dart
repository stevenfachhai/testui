import 'package:dartz/dartz.dart';
import 'package:ohkarao/data/models/auth/create_user.dart';
import 'package:ohkarao/data/models/auth/signin_user_req.dart';

abstract class AuthRepository {
  Future<Either> signup(CreateUserReq createUserReq);

  Future<Either> signin(SigninUserReq signinUserReq);
}
