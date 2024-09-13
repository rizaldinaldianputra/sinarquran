import 'package:dio/dio.dart';
import 'package:quransinar/model/doa.dart';
import 'package:quransinar/model/surah.dart';
import 'package:quransinar/service/dio_service.dart';

class DoaService {
  late CommonService api;
  late Response response;
  String url = 'https://open-api.my.id/api/doa';
  String connErr = 'Please check your internet connection and try again';

  DoaService(context) {
    api = CommonService(context);
  }

  Future<List<Surah>> findAllDoa() async {
    response = await api.getHTTP(url);

    List<Surah> listData = <Surah>[];
    List<dynamic> listReturn = response.data as List;
    for (var i in listReturn) {
      listData.add(Surah.fromJson(i));
    }

    return listData;
  }

  Future<Doa> findAllDoaById(int id) async {
    try {
      final response = await api.getHTTP("$url/$id");
      if (response.statusCode == 200) {
        final result = Doa.fromJson(response.data);
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
