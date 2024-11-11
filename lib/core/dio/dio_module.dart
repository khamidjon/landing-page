import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:landing/core/dio/api_interceptor.dart';

const _baseUrl = "https://api.musixmatch.com/ws/1.1/";
const _requestTimeOutInSeconds = Duration(seconds: 7);

@module
abstract class DioModule {
  @singleton
  Future<Dio> getUnauthorizedDioClient() async {
    final dioClient = _dioClient();
    dioClient.interceptors.addAll([
      UnauthorizedRequestInterceptor(),
    ]);
    return dioClient;
  }

  Dio _dioClient() {
    final baseOptions = BaseOptions(
      baseUrl: _baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: _requestTimeOutInSeconds,
      receiveTimeout: _requestTimeOutInSeconds,
    );
    return Dio(baseOptions);
  }
}
