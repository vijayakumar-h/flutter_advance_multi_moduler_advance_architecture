import 'package:data/constants/constants.dart';
import 'package:data/data.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory();

  Future<Dio> getDio() async {
    Dio dio = Dio();
    Map<String, String> headers = {
      contentType:applicationJson,
      accept:applicationJson,
      authorization:"your _access_token", //todo get access token here
      defaultLanguage: "app_language", // todo get app language here
      clientId: "app_client_id", // todo get app client id
    };

    dio.options = BaseOptions(
      baseUrl: "Your base url", // todo add your base url
      headers: headers,
      receiveTimeout: const Duration(seconds: 60),
      sendTimeout: const Duration(seconds: 60),
    ); // BestOptions

    if(!kDebugMode){
      dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
      ));
    }
    return dio;
  }
}