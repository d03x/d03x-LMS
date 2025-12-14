class UserEntity {
  final int id;
  final String username;
  final String email;
  final AddressEntity address;

  UserEntity({
    required this.address,
    required this.email,
    required this.username,
    required this.id
  });
}


class AddressEntity {
  final String street;
  final String suite;
  final String city;
  final String zipcode;
  
  AddressEntity({
    required this.city,
    required this.street,
    required this.suite,
    required this.zipcode
  });
}