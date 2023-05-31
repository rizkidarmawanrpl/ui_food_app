import 'dart:developer';
import 'package:dio/dio.dart';

class HttpService {
  late Dio dio;

  static String baseUrl = "https://reqres.in/";

  final baseOption = BaseOptions(
    baseUrl: baseUrl,
  );

  HttpService() {
    dio = Dio(baseOption);

    initializeInterceptors();
  }

  Future<Response> getRequest(String endPoint) async {
    Response response;
    
    try {
      response = await Dio(baseOption).get(endPoint);

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