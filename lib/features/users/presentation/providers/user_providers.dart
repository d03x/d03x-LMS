import 'package:d03xlms/features/users/data/datasource/user_remote_datasource.dart';
import 'package:d03xlms/features/users/data/repositories/user_repository_impl.dart';
import 'package:d03xlms/features/users/domain/entities/user_entity.dart';
import 'package:d03xlms/features/users/domain/repositories/user_repository.dart';
import 'package:d03xlms/features/users/domain/usecases/get_all_user_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userRemoteDatasourceProvider = Provider<UserRemoteDatasource>((ref) {
  return UserRemoteDatasource();
});
final userRepository = Provider<UserRepository>((ref) {
  return UserRepositoryImpl(
    userRemoteDatasource: ref.read(userRemoteDatasourceProvider),
  );
});

final getAllUserUsecasePovider = Provider<GetAllUserUsecase>((ref) {
  return GetAllUserUsecase(repository: ref.read(userRepository));
});

class UserController extends AsyncNotifier<List<UserEntity>?> {
  @override
  Future<List<UserEntity>?> build() async {
    return List.empty();
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      return await ref.read(getAllUserUsecasePovider).call();
    });
  }
}

final userControllerProvider = AsyncNotifierProvider.autoDispose(
  UserController.new,
);
