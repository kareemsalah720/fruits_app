import 'package:dartz/dartz.dart';
import 'package:fruits_app/core/errors/failures.dart';
import 'package:fruits_app/features/auth/domain/entites/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPass(
      String email, String pass, String name);
  Future<Either<Failure, UserEntity>> signinWithEmailAndPassword(
      String email, String password, String name);
}
