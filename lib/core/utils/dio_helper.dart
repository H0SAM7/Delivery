import 'package:dio/dio.dart';

class DioServices {
  final dio = Dio();

  Future<Map<String, dynamic>> getAllBooks(
      {required String url, required String quary}) async {
    Response response = await Dio().get('$url');
    return response.data;
  }
}
