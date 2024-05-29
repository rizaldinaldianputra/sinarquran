import 'dart:convert';

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';
import 'package:quransinar/constant/constant.dart';
import 'package:quransinar/model/surah.dart';
import 'package:quransinar/service/common_serice.dart';

class SurahSerice {
  late CommonService api;
  late Response response;
  String url = API_URL + '/surah';
  String connErr = 'Please check your internet connection and try again';

  SurahSerice(context) {
    api = CommonService(context);
  }

  Future<List<Surah>> findAllSurah() async {
    response = await api.getHTTP(url);

    List<Surah> _listData = <Surah>[];
    List<dynamic> _listReturn = response.data as List;
    _listReturn.forEach((i) => {_listData.add(Surah.fromJson(i))});

    return _listData;
  }

  // Future<Response> uploadNoImage({
  //   required String start,
  //   required String end,
  //   required String description,
  //   required String absenceTypeId,
  // }) async {
  //   FormData formData = FormData.fromMap({
  //     'start': start,
  //     'end': end,
  //     'description': description,
  //     'absenceTypeId': absenceTypeId,
  //   });
  //   response = await api.postHTTPMedia(url + '/upload', formData);

  //   return response;
  // }

  // Future<Response> upload({
  //   required File file,
  //   required String start,
  //   required String end,
  //   required String description,
  //   required String absenceTypeId,
  // }) async {
  //   FormData formData = FormData.fromMap({
  //     'image': file.path != null
  //         ? await MultipartFile.fromFile(file.path,
  //             filename: file.path, contentType: MediaType('image', 'jpeg'))
  //         : null,
  //     'start': start,
  //     'end': end,
  //     'description': description,
  //     'absenceTypeId': absenceTypeId,
  //   });
  //   response = await api.postHTTPMedia(url + '/upload', formData);

  //   return response;
  // }

  // Future<Response> edit({
  //   required File file,
  //   required String id,
  //   required String start,
  //   required String end,
  //   required String description,
  //   required String absenceTypeId,
  // }) async {
  //   FormData formData = FormData.fromMap({
  //     'id': id,
  //     'image': await MultipartFile.fromFile(file.path,
  //         filename: file.path, contentType: MediaType('image', 'jpeg')),
  //     'start': start,
  //     'end': end,
  //     'description': description,
  //     'absenceTypeId': absenceTypeId,
  //   });
  //   response = await api.postHTTPMedia(url + '/upload', formData);

  //   return response;
  // }

  // Future<Response> editNoPict({
  //   required String id,
  //   required String start,
  //   required String end,
  //   required String description,
  //   required String absenceTypeId,
  // }) async {
  //   FormData formData = FormData.fromMap({
  //     'id': id,
  //     'start': start,
  //     'end': end,
  //     'description': description,
  //     'absenceTypeId': absenceTypeId,
  //   });
  //   response = await api.postHTTPMedia(url + '/upload', formData);

  //   return response;
  // }
}
