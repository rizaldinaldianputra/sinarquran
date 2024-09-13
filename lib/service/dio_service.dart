/*
This is api provider
This page is used to get data from API
 */

import 'dart:convert';
import 'package:dio/dio.dart' as diopackage;
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:quransinar/constant/constant.dart';

import 'package:shared_preferences/shared_preferences.dart';

class CommonService {
  static const String url = API_URL;
  static BaseOptions opts = BaseOptions(
    baseUrl: url,
    responseType: ResponseType.json,
  );

  late Dio _dio;
  CommonService(context) {
    _dio = Dio(opts);
    _dio.interceptors.add(getInterceptorWrapper(context));
  }

  InterceptorsWrapper getInterceptorWrapper(context) {
    return InterceptorsWrapper(
      onError: (error, errorInterceptor) async {
        if (error.response == null) {
          Fluttertoast.showToast(
              msg: "Network Error",
              toastLength: Toast.LENGTH_SHORT,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 13);
          return errorInterceptor.resolve(error.response!);
        }
        if (error.response!.statusCode == 403) {
          return errorInterceptor.resolve(error.response!);
        }
        if (error.response!.statusCode == 401) {
          return errorInterceptor.resolve(error.response!);
        } else {
          Fluttertoast.showToast(
              msg: "${error.response!.statusCode}-" +
                  error.response!.data["message"],
              toastLength: Toast.LENGTH_SHORT,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 13);
          return errorInterceptor.resolve(error.response!);
        }
      },
      onRequest: (request, requestInterceptor) async {
        String? token = '';
        SharedPreferences sharedPreferences =
            await SharedPreferences.getInstance();
        token = sharedPreferences.getString("token");
        if (token != null) {
          request.headers.addAll({"Authorization": "Bearer: $token"});
        }
        return requestInterceptor.next(request);
      },
      onResponse: (response, handler) async {
        if (response.statusCode == 401) {
          if (response.statusCode == 403) {}
          return;
        }

        return handler.next(response);
      },
    );
  }

  static dynamic errorInterceptor(RequestOptions options) async {
    // Get your JWT token
    const token = '';
    options.headers.addAll({"Authorization": "Bearer: $token"});
    return options;
  }

  Future<diopackage.Response> getHTTP(String url) async {
    try {
      diopackage.Response response = await _dio.get(url);
      return Future.value(response);
    } on DioException catch (e) {
      return Future.error(e);
    }
  }

  Future<diopackage.Response> postHTTP(String url, dynamic data) async {
    try {
      String json = jsonEncode(data);

      diopackage.Response response = await _dio.post(url, data: json);
      return response;
    } on DioException catch (e) {
      if (e.response == null) {
        return Future.error(e);
      } else {
        return Future.error(e.response!.data['message']);
      }
    }
  }

  Future<diopackage.Response> postHTTPFormData(
      String url, FormData data) async {
    try {
      diopackage.Response response = await _dio.post(url, data: data);
      return response;
    } on DioException catch (e) {
      if (e.response == null) {
        return Future.error(e);
      } else {
        return Future.error(e.response!.data['message']);
      }
    }
  }

  Future<diopackage.Response> postHTTPMedia(String url, FormData data) async {
    try {
      diopackage.Response response = await _dio.post(url, data: data);
      return response;
    } on DioException catch (e) {
      if (e.response == null) {
        return Future.error(e);
      } else {
        return Future.error(e.response!.data['message']);
      }
    }
  }

  Future<diopackage.Response> putHTTP(String url, dynamic data) async {
    try {
      String json = jsonEncode(data);
      diopackage.Response response = await _dio.put(url, data: json);
      return Future.value(response);
    } on DioException catch (e) {
      return Future.error(e);
    }
  }

  Future<diopackage.Response> deleteHTTP(String url) async {
    try {
      diopackage.Response response = await _dio.delete(url);
      return Future.value(response);
    } on DioException catch (e) {
      return Future.error(e);
    }
  }

  // Future<File> download2(String url, String filename) async {
  //   try {
  //     diopackage.Response response = await _dio.get(
  //       url,
  //       //Received data with List<int>
  //       options: Options(
  //           responseType: ResponseType.bytes,
  //           followRedirects: false,
  //           validateStatus: (status) {
  //             return status! < 500;
  //           }),
  //     );

  //     if (!kIsWeb) {
  //       Directory? appDocDir = Platform.isAndroid
  //           ? await getExternalStorageDirectory() //FOR ANDROID
  //           : await getTemporaryDirectory();
  //       String appDocPath = appDocDir!.path;
  //       File file = File(appDocPath + "/" + filename);

  //       if (!file.existsSync()) {
  //         new File(appDocPath + "/" + filename).createSync(recursive: true);
  //         file = File(appDocPath + "/" + filename);
  //       }
  //       var raf = file.openSync(mode: FileMode.write);
  //       raf.writeFromSync(response.data);
  //       await raf.close();
  //       return file;
  //     } else {
  //       Uint8List bytes = response.data;
  //       final blob = html.Blob([bytes]);
  //       final url = html.Url.createObjectUrlFromBlob(blob);
  //       final anchor = html.document.createElement('a') as html.AnchorElement
  //         ..href = url
  //         ..style.display = 'none'
  //         ..download = filename;
  //       html.document.body!.children.add(anchor);
  //       anchor.click();
  //       html.document.body!.children.remove(anchor);
  //       html.Url.revokeObjectUrl(url);
  //       File file = File(filename);
  //       return file;
  //     }
  //   } catch (e) {
  //     throw e;
  //   }
  // }

  // Future<File> download2Post(String url, dynamic data, String filename) async {
  //   try {
  //     diopackage.Response response = await _dio.post(url,
  //         options: Options(
  //             responseType: ResponseType.bytes,
  //             followRedirects: false,
  //             validateStatus: (status) {
  //               return status! < 500;
  //             }),
  //         data: data);

  //     if (!kIsWeb) {
  //       Directory? appDocDir = await getExternalStorageDirectory();
  //       String appDocPath = appDocDir!.path;
  //       File file = File(appDocPath + "/" + filename);

  //       if (!file.existsSync()) {
  //         new File(appDocPath + "/" + filename).createSync(recursive: true);
  //         file = File(appDocPath + "/" + filename);
  //       }
  //       var raf = file.openSync(mode: FileMode.write);
  //       raf.writeFromSync(response.data);
  //       await raf.close();
  //       return file;
  //     } else {
  //       Uint8List bytes = response.data;
  //       final blob = html.Blob([bytes]);
  //       final url = html.Url.createObjectUrlFromBlob(blob);
  //       final anchor = html.document.createElement('a') as html.AnchorElement
  //         ..href = url
  //         ..style.display = 'none'
  //         ..download = filename;
  //       html.document.body!.children.add(anchor);
  //       anchor.click();
  //       html.document.body!.children.remove(anchor);
  //       html.Url.revokeObjectUrl(url);
  //       File file = File(filename);
  //       return file;
  //     }
  //   } catch (e) {
  //     throw e;
  //   }
  // }
}
