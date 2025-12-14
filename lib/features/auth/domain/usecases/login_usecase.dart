import 'package:d03xlms/features/auth/domain/entities/user_entity.dart';
import 'package:d03xlms/features/auth/domain/repositories/auth_repository.dart';

class LoginUsecase {
  final AuthRepository authRepository;

  LoginUsecase({required this.authRepository});

  Future<UserEntity> call(String email) async {
    return await authRepository.login(email);
  }
}
