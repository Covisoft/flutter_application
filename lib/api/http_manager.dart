import 'package:dio/dio.dart';
import 'package:flutter_app/common/configs/config.dart';
import 'package:flutter_app/common/utils/utils.dart';

class HTTPManager {
  late final Dio dioInternal;
  late final Dio dioExternal;

  final List<String> rejectCode = [
    'jwt expired',
    'un_authorized',
    'user_not_found'
  ];

  HTTPManager() {
    ///Dio internal
    dioInternal = Dio(
      BaseOptions(
        baseUrl: ConfigApplication.baseUrl,
        connectTimeout: 10000,
        receiveTimeout: 10000,
        responseType: ResponseType.json,
      ),
    );

    ///Dio external
    dioExternal = Dio(
      BaseOptions(
        baseUrl: ConfigApplication.domain,
        connectTimeout: 10000,
        receiveTimeout: 10000,
        responseType: ResponseType.json,
      ),
    );
  }

  ///Post method
  Future<dynamic> post(
      {required String url,
      Map<String, dynamic>? data,
      Options? options}) async {
    Dio request = dioInternal;
    if (ConfigApplication.external) {
      request = dioExternal;
    }
    try {
      final response = await request.post(
        url,
        data: data,
        options: options,
      );
      return response.data;
    } on DioError catch (error) {
      return errorHandle(error);
    }
  }

  ///Get method
  Future<dynamic> get({
    required String url,
    Map<String, dynamic>? params,
    Options? options,
    bool external = false,
  }) async {
    Dio request = dioInternal;
    if (external) {
      request = dioExternal;
    }
    try {
      final response = await request.get(
        url,
        queryParameters: params,
        options: options,
      );
      return response.data;
    } on DioError catch (error) {
      return errorHandle(error);
    }
  }

  ///Put method
  Future<dynamic> put(
      {required String url,
      Map<String, dynamic>? data,
      Options? options}) async {
    Dio request = dioInternal;
    if (ConfigApplication.external) {
      request = dioExternal;
    }
    try {
      final response = await request.put(
        url,
        data: data,
        options: options,
      );
      return response.data;
    } on DioError catch (error) {
      return errorHandle(error);
    }
  }

  ///Delete method

  Future<dynamic> delete(
      {required String url,
      Map<String, dynamic>? data,
      Options? options}) async {
    Dio request = dioInternal;
    if (ConfigApplication.external) {
      request = dioExternal;
    }
    try {
      final response = await request.delete(
        url,
        data: data,
        options: options,
      );
      return response.data;
    } on DioError catch (error) {
      return errorHandle(error);
    }
  }

  ///Print request info
  void printRequest(RequestOptions options) {
    UtilLogger.log("BEFORE REQUEST ====================================");
    UtilLogger.log("${options.method} URL", options.path);
    if (options.method == 'GET') {
      UtilLogger.log("PARAMS", options.queryParameters);
    } else {
      UtilLogger.log("DATA", options.data);
    }
  }

  ///Error common handle
  Map<String, dynamic> errorHandle(DioError error) {
    String message = "unknown_error";
    Map<String, dynamic> data = {};

    if (error.response == null) {
      switch (error.type) {
        case DioErrorType.sendTimeout:
        case DioErrorType.receiveTimeout:
          message = "request_time_out";
          break;

        default:
          message = "cannot_connect_server";
          break;
      }

      return {
        "success": false,
        "message": message,
        "data": data,
      };
    } else {
      if (error.response!.data == null) {
        return {
          "success": false,
          "message": message,
          "data": data,
        };
      }
      return error.response!.data;
    }
  }
}
