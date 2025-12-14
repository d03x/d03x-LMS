import 'package:d03xlms/features/auth/domain/entities/user_entity.dart';
import 'package:d03xlms/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {

 @override 
 Future<UserEntity> login(String email)async{
  return await Future.delayed(Duration(seconds: 32));
 }
}