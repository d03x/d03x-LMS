import 'package:d03xlms/features/users/domain/entities/user_entity.dart';
import 'package:d03xlms/features/users/domain/repositories/user_repository.dart';

class GetAllUserUsecase {
  final UserRepository repository;

  GetAllUserUsecase({
    required this.repository
  });
  Future<List<UserEntity>> call() async {
    final data = await repository.getUsers();
    print(data);
    return data;
  }
}
