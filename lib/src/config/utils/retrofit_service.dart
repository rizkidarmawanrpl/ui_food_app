import 'package:dio/dio.dart';
import 'package:food_app/src/models/user_model.dart';
import 'package:retrofit/retrofit.dart';

part 'retrofit_service.g.dart';

@RestApi(baseUrl: 'https://reqres.in/')
abstract class RetrofitService {
  factory RetrofitService(Dio dio, {String? baseurl}) {
    dio.options = BaseOptions(connectTimeout: 5000,
        receiveTimeout: 3000,
    );

    return _RetrofitService(dio, baseUrl: baseurl);
  }

  @GET('api/users/2/')
  Future<UserModel> getUser();
}