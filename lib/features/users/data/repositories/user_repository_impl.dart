import 'package:d03xlms/features/users/data/datasource/user_remote_datasource.dart';
import 'package:d03xlms/features/users/data/models/user_model.dart';
import 'package:d03xlms/features/users/domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDatasource userRemoteDatasource;

  UserRepositoryImpl({required this.userRemoteDatasource});

  @override
  Future<List<UserModel>> getUsers() async {
    final dynamic user = await userRemoteDatasource.getAllUsers();
    return List<UserModel>.from(user.map((json) => UserModel.fromJson(json)));
  }
}
