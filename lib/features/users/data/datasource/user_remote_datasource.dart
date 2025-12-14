import 'package:dio/dio.dart';

class UserRemoteDatasource {
  final Dio dio = Dio();
  Future<dynamic> getAllUsers() async {
    try {
      final data = await dio.get('https://jsonplaceholder.typicode.com/users');
      return data.data;
    } catch (e) {
      throw Exception('Gagal terhubung ke server:$e.toString()');
    }
  }

  Future<dynamic> fetchUserById() async {}
}
