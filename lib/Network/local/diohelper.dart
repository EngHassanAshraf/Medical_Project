import 'package:dio/dio.dart';

class DioHelper {
  static Dio? modelsdio;

  static init() {
    modelsdio = Dio(
      BaseOptions(
        baseUrl: "http://192.168.1.4:8000",
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getData({
    required String path,
    Map<String, dynamic>? queryPara,
  }) async {
    return await modelsdio!.get(path, queryParameters: queryPara);
  }
}
