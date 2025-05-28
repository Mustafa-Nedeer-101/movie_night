import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  /// private constructor as I don't want to allow creating an instance of this class
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      addDioHeaders(dio!);
      addDioInterceptor(dio!);
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioHeaders(Dio dio) async {
    dio.options.headers = {
      'Accept': 'application/json',
    };
  }

  static void setTokenIntoHeaderAfterLogin(String token) {
    dio!.options.headers = {
      'Authorization': 'Bearer $token',
    };
  }

  static void addDioInterceptor(Dio dio) {
    dio.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }
}
