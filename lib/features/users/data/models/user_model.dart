import 'package:d03xlms/features/users/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    required super.address,
    required super.email,
    required super.id,
    required super.username,
  });
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      address: AddressEntity(
        city: json['address']['city'],
        street: json['address']['street'],
        suite: json['address']['suite'],
        zipcode: json['address']['zipcode'],
      ),
      email: json['email'],
      id: json['id'],
      username: json['username'],
    );
  }
}
