import 'package:d03xlms/features/users/data/models/user_model.dart';

abstract class UserRepository {
  Future<List<UserModel>> getUsers();
}