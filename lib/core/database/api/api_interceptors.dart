import 'dart:core';

import 'package:dio/dio.dart';

class ApiInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // options.headers['token'] = sl<CacheHelper>().getData(key: 'token') != null
    //     ? 'FOODAPI ${sl<CacheHelper>().getData(key: 'token')}'
    //     : null;
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    //handel the response
    // if (response.statusCode == 308) {
    //   var newUri = response.headers['location']?.first;

    //   if (newUri != null) {
    //     //Re-send the request to the new URI
    //     Options.lowercase = Uri.parse(newUri);
    //     return handler.resolve(response);
    //   }

    super.onResponse(response, handler);
    //   }
    //   return handler.next(response);
    // }
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    super.onError(err, handler);
  }
}
