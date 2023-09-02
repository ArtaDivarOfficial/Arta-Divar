import 'package:dio/dio.dart';

class MyDio {
  static Dio? _dio = Dio();
  static const String _headerKey = 'Accept';
  static const String _headerValue = 'application/json';
  static const String baseAPIUrl = 'https://artadivar.com/api';
  static const String basePublicAPIUrl = 'https://artadivar.com/public';
  static late Response? response;
  static CancelToken cancelToken = CancelToken();

  static Dio? getInstance() {
    _dio ??= Dio(
      BaseOptions(
        connectTimeout: const Duration(seconds: 60),
        receiveTimeout: const Duration(seconds: 60),
        headers: {_headerKey: _headerValue},
      ),
    );
    return _dio;
  }
}
