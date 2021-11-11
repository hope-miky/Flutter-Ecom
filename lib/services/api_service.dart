import 'package:addisecom/constants/products.dart';
import 'package:dio/dio.dart';

class ApiService {
  final options = BaseOptions(
    baseUrl: baseurl,
    connectTimeout: 5000,
    receiveTimeout: 3000,
  );

  get dio => _dio;

  late Dio _dio;

  ApiService() {
    _dio = Dio(options);
  }
}
