import 'dart:developer';
import 'package:dio/dio.dart';

class HttpService {
  late Dio dio;

  final baseUrl = "https://reqres.in/";

  HttpService() {
    dio = Dio(BaseOptions(
      baseUrl: baseUrl,
    ));

    initializeInterceptors();
  }

  Future<Response> getRequest(String endPoint) async {
    Response response;
    
    try {
      response = await Dio(BaseOptions(
        baseUrl: baseUrl,
      )).get(endPoint);

      return response;
    } on DioError catch (e) {
      log(e.message);
      throw Exception(e.message);
    }
  }

  initializeInterceptors() {
    dio.interceptors.add(InterceptorsWrapper(
      onError: (DioError error, ErrorInterceptorHandler handler) {
        log("ERROR[${error.response?.statusCode}] => PATH: ${error.requestOptions.path}");
      },
      onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
        log("REQUEST[${options.method}] => PATH: ${options.path}");
      },
      onResponse: (response, handler) {
        log("RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}");
      },
    ));
  }
}