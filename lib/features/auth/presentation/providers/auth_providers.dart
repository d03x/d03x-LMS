import 'package:d03xlms/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:d03xlms/features/auth/domain/entities/user_entity.dart';
import 'package:d03xlms/features/auth/domain/repositories/auth_repository.dart';
import 'package:d03xlms/features/auth/domain/usecases/login_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepositoryImpl();
});

final authUseCaseProvider = Provider<LoginUsecase>((ref) {
  return LoginUsecase(authRepository: ref.read(authRepositoryProvider));
});

class AuthController extends AsyncNotifier<UserEntity?> {
  @override
  Future<UserEntity?> build() async {
    return null;
  }

  Future<void> login() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final usecase = ref.read(authUseCaseProvider);
      return await usecase.call("dadan@gmail.com");
    });
  }
}
