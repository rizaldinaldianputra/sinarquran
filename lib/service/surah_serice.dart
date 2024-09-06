import 'dart:convert';

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';
import 'package:quransinar/constant/constant.dart';
import 'package:quransinar/model/detail_surah.dart';
import 'package:quransinar/model/surah.dart';
import 'package:quransinar/service/common_serice.dart';

class SurahService {
  late CommonService api;
  late Response response;
  String url = '$API_URL/surah';
  String connErr = 'Please check your internet connection and try again';

  SurahService(context) {
    api = CommonService(context);
  }

  Future<List<Surah>> findAllSurah() async {
    response = await api.getHTTP(url);

    List<Surah> listData = <Surah>[];
    List<dynamic> listReturn = response.data as List;
    for (var i in listReturn) {
      listData.add(Surah.fromJson(i));
    }

    return listData;
  }

  Future<DetailSurah> findAllSurahById(int id) async {
    try {
      final response = await api.getHTTP("$url/$id");
      if (response.statusCode == 200) {
        final result = DetailSurah.fromJson(response.data);
        return result;
      } else {
        // Handle different response status codes
        throw Exception(
            'Failed to load surah. Status code: ${response.statusCode}');
      }
    } catch (e) {
      // Handle errors (network issues, parsing errors, etc.)
      print('Error fetching detail surah: $e');
      throw Exception('Failed to load surah: $e');
    }
  }
}
