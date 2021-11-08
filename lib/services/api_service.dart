import 'package:dio/dio.dart';

class ApiService {
  final options = BaseOptions(
    baseUrl: 'http://192.168.1.4:3000/',
    connectTimeout: 5000,
    receiveTimeout: 3000,
  );

  get dio => _dio;

  late Dio _dio;

  ApiService() {
    _dio = Dio(options);
  }
}
